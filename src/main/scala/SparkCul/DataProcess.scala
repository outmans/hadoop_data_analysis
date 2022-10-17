package SparkCul

import org.apache.spark.sql.functions.lit
import org.apache.spark.sql.types.StringType
import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}

import java.util.Properties

class DataProcess {

  def compute(path: String,taskId:String): Unit = {

    System.setProperty("hadoop.home.dir", "/usr/local/hadoop-2.6.0")

    //创建spark sql环境
    val spark: SparkSession = SparkSession.builder()
      .master("local[*]")
      .appName("sparkSQL")
      .getOrCreate()

    val jdFrame: DataFrame = spark.read
      .option("header", "true") //将第一行当作表头
      .option("inferSchema", "true") //推断数据类型
      .csv(path)

    //创建临时表
    val frame: DataFrame = jdFrame.withColumn("task_id", lit(taskId).cast(StringType))
    frame.createOrReplaceTempView("jingdong")



    //1.刷新率前五（的手机）
    val rateRes: DataFrame = spark.sql("select distinct task_id,phoneModel as model,rate from jingdong order by rate desc limit 5")
    //res1.show()

    //2.上市时间后十
    val launchRes: DataFrame = spark.sql("select task_id,phoneModel as model,launchDate as launch_date from jingdong order by launchDate desc limit 10")
    //res2.show()

    //3.重量最轻前十
    val weightRes: DataFrame = spark.sql("select distinct task_id,phoneModel as model,weight from jingdong order by weight is null,weight limit 10")
    //res3.show()

    //4.商品评论数前十
    val commentRes: DataFrame = spark.sql("select distinct task_id,phoneModel as model,comment from jingdong  order by comment is null,comment desc limit 10")
    //res4.show()

    //5.摄像头像素前五
    val cameraRes: DataFrame = spark.sql(" select distinct task_id,camera,phoneModel as model from jingdong order by camera is null,camera desc limit 5")
    //res5.show()

    //6.手机电池容量前十
    val batteryRes: DataFrame = spark.sql("  select distinct task_id,phoneModel as model,battery from jingdong  order by battery is null,battery desc limit 10")
    //res6.show()

    //7.手机充电功率前十
    val powerRes: DataFrame = spark.sql(" select distinct task_id,phoneModel as model,power from jingdong order by power is null,power desc limit 10")
    //res7.show()

    //8.手机各系统的数量
    val systemRes: DataFrame = spark.sql("SELECT system, count( system ) AS count FROM jingdong GROUP BY system HAVING count( system ) >= 1 ORDER BY count DESC")
    val systemFinalRes = systemRes.withColumn("task_id", lit(taskId).cast(StringType))
    //systemRes.show()

    //9.手机品牌占比
    val brandRes: DataFrame = spark.sql("SELECT brand, count( brand ) AS count FROM jingdong GROUP BY brand HAVING count( brand ) >= 1 ORDER BY count DESC limit 5")
    val brandFinalRes = brandRes.withColumn("task_id", lit(taskId).cast(StringType))
    //brandRes.show()

    //10.单双卡手机数量
    val simRes: DataFrame = spark.sql("SELECT sim, count( sim ) AS count FROM jingdong GROUP BY sim HAVING count( sim ) >= 1 ORDER BY count DESC")
    val simFinalRes = simRes.withColumn("task_id", lit(taskId).cast(StringType))
    //simRes.show()

    val prop = new Properties()
    prop.setProperty("user", "root")
    prop.setProperty("password", "123456")

    //将结果存到MySQL
    rateRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "rateTop5", prop)
    launchRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "launchTop10", prop)
    weightRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "weightTop10", prop)
    commentRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "commentTop10", prop)
    cameraRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "cameraTop5", prop)
    batteryRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "batteryTop10", prop)
    powerRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "powerTop10", prop)
    systemFinalRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "systemPercent", prop)
    brandFinalRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "brandPercent", prop)
    simFinalRes.write.mode(SaveMode.Append).jdbc("jdbc:mysql://localhost:3306/hadoop?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "simPercent", prop)

    spark.stop()
  }

}
