package com.itranlin.basic.admin.service.impl

import org.apache.spark.rdd.RDD
import org.apache.spark.{SparkConf, SparkContext}

class DataProcess {

  def compute(path: String) = {
    //创建spark运行环境
    val sparkConf = new SparkConf().setMaster("local[*]").setAppName("scoreCount")
    val sc = new SparkContext(sparkConf)
    val goodsData = sc.textFile(path)

    val jdRDD = goodsData.map {
      x => {
        val phone = x.split(",")
        (phone(0), phone(1), phone(2), phone(3).toInt, phone(4), phone(5), phone(6), phone(7), phone(8), phone(9),
          phone(10), phone(11).toInt, phone(12).toInt, phone(13), phone(14).toInt, phone(15))
      }
    }

    //刷新率前五（的手机）
    val t: RDD[String] =jdRDD.map(x=>x._7.dropRight(2))
    val rate=t.map(x=>x.toInt)
    val resTopFive=rate.sortBy(x=>x,false)
    resTopFive.collect().take(5).foreach(println)

    sc.stop()
  }


}
