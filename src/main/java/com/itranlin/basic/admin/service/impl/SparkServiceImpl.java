package com.itranlin.basic.admin.service.impl;

import com.itranlin.basic.admin.dto.Spark.*;
import com.itranlin.basic.admin.mapper.paramMapper;
import com.itranlin.basic.admin.service.DataProcess;
import com.itranlin.basic.admin.service.ISparkService;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogVO;
import com.itranlin.basic.common.util.CsvUtils;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.*;
import java.net.Socket;
import java.util.*;

@Service
public class SparkServiceImpl implements ISparkService {

    @Resource
    private paramMapper paramMapper;


    @Override
    public void randomAll(GenerateDTO generateDTO) throws IOException, InterruptedException {
        int totalNum = generateDTO.getNum();
        String system = generateDTO.getSystemPercent();
        String sim = generateDTO.getSimPercent();
        //品牌，如果是0则随机
        String brand = generateDTO.getBrand();
        //型号，如果是0则随机
        String model = generateDTO.getModel();
        //品牌字段数据如果不是0则解析数据
        int brandNum = 0;
        List<BrandDTO> brandList = new ArrayList<>();
        if (!brand.equals("0")) {
            String[] split = brand.split(";");
            for (String s : split) {
                BrandDTO brandDTO = new BrandDTO();
                brandDTO.setBrand(s);
                brandList.add(brandDTO);
            }
        } else {
            brandList = paramMapper.selectBrand();
        }
        brandNum = brandList.size();

        List<CameraDTO> cameraList = paramMapper.selectCamera();
        int cameraNum = cameraList.size();

        //型号字段数据如果不是0则解析数据
        int phoneModelNum = 0;
        List<ModelDTO> phoneModelList = new ArrayList<>();
        if (!model.equals("0")) {
            String[] split = model.split(";");
            for (String m : split) {
                ModelDTO modelDTO = new ModelDTO();
                modelDTO.setModel(m);
                phoneModelList.add(modelDTO);
            }
        } else {
            phoneModelList = paramMapper.selectModel();
        }
        phoneModelNum = phoneModelList.size();

        List<ShopNameDTO> shopNameList = paramMapper.selectShopName();
        int shopNameNum = shopNameList.size();

        List<CpuDTO> cpuModelList = paramMapper.selectCpu();
        int cpuModelNum = cpuModelList.size();

        List<RefreshDTO> rateList = paramMapper.selectRefresh();
        int rateNum = rateList.size();

        List<BatteryDTO> batteryList = paramMapper.selectBattery();
        int batteryNum = batteryList.size();

        List<WirelessDTO> wirelessList = paramMapper.selectWireless();
        int wirelessNum = wirelessList.size();

        List<PowerDTO> powerList = paramMapper.selectPower();
        int powerNum = powerList.size();

        //系统字段数据如果不是0则解析数据
        int androidPercent = 0;
        int harmonyPercent = 0;
        int iosPercent = 0;
        int simplePercent = 0;
        List<String> systemList = new ArrayList<>(Arrays.asList("安卓", "鸿蒙", "ios", "功能机"));
        if (!system.equals("0")) {
            String[] split = system.split(";");
            androidPercent = (Integer.parseInt(split[0]) * totalNum) / 100;
            harmonyPercent = (Integer.parseInt(split[1]) * totalNum) / 100 + androidPercent;
            iosPercent = (Integer.parseInt(split[2]) * totalNum) / 100 + harmonyPercent;
            simplePercent = (Integer.parseInt(split[3]) * totalNum) / 100 + iosPercent;
        }
        int systemNum = systemList.size();

        List<String> support5GList = new ArrayList<>(Arrays.asList("支持", "不支持"));
        int support5GNum = support5GList.size();

        //sim卡字段数据如果不是0则解析数据
        int onePercent = 0;
        int twoPercent = 0;
        List<String> simList = new ArrayList<>(Arrays.asList("1", "2"));
        if (!sim.equals("0")) {
            String[] split = sim.split(";");
            onePercent = (Integer.parseInt(split[0]) * totalNum) / 100;
            twoPercent = (Integer.parseInt(split[1]) * totalNum) / 100 + onePercent;
        }
        int simNum = simList.size();

        //生成 totalNum 条随机数据
        int sum = 1;
        Random ran = new Random();
        //随机生成的List
        List<Map<String, Object>> dataList = new ArrayList<>();

        while (sum <= totalNum) {
            //如果要打印数据到控制台会拖慢数据生成速度，因为sout是同步的
            //System.out.println("正在生成随机数据第" + sum + "条");

            //随机生成的map
            Map<String, Object> dataMap = new LinkedHashMap<>();

            //随机生成品牌
            int ranBrand = ran.nextInt(brandNum);
            dataMap.put("brand", brandList.get(ranBrand).getBrand());

            //随机生成型号
            int ranPhoneModel = ran.nextInt(phoneModelNum);
            dataMap.put("phoneModel", phoneModelList.get(ranPhoneModel).getModel());

            //随机生成店铺名称
            int ranShopName = ran.nextInt(shopNameNum);
            dataMap.put("shopName", shopNameList.get(ranShopName).getShopName());

            //随机生成评论
            int ranComment = ran.nextInt(10000);
            dataMap.put("comment", ranComment);

            //随机生成像素
            int ranCamera = ran.nextInt(cameraNum);
            dataMap.put("camera", cameraList.get(ranCamera).getCamera());

            //随机生成cpu
            int ranCpuModel = ran.nextInt(cpuModelNum);
            dataMap.put("cpuModel", cpuModelList.get(ranCpuModel).getCpu());

            //随机生成刷新率
            int ranRate = ran.nextInt(rateNum);
            dataMap.put("rate", rateList.get(ranRate).getRefreshRate());

            //随机生成电池
            int ranBattery = ran.nextInt(batteryNum);
            dataMap.put("battery", batteryList.get(ranBattery).getBattery());

            //随机生成无线充电
            int ranWireless = ran.nextInt(wirelessNum);
            dataMap.put("wireless", wirelessList.get(ranWireless).getWirelessCharging());

            //随机生成电池
            int ranPower = ran.nextInt(powerNum);
            dataMap.put("power", powerList.get(ranPower).getPower());

            //随机生成系统
            if (!system.equals("0")) {
                if (sum <= androidPercent) {
                    dataMap.put("system", "安卓");
                }
                if (sum <= harmonyPercent && sum > androidPercent) {
                    dataMap.put("system", "鸿蒙");
                }
                if (sum <= iosPercent && sum > harmonyPercent) {
                    dataMap.put("system", "ios");
                }
                if (sum <= simplePercent && sum > iosPercent) {
                    dataMap.put("system", "功能机");
                }
            } else {
                int ranSystem = ran.nextInt(systemNum);
                dataMap.put("system", systemList.get(ranSystem));
            }

            //随机生成重量
            int ranWeight = ran.nextInt(50) + 150;
            dataMap.put("weight", ranWeight);

            //随机生成尺寸
            int ranInch = ran.nextInt(3) + 5;
            dataMap.put("inch", ranInch);

            //随机生成是否支持5G
            int ran5G = ran.nextInt(support5GNum);
            dataMap.put("5G", support5GList.get(ran5G));

            //随机生成sim卡
            if (!system.equals("0")) {
                if (sum <= onePercent) {
                    dataMap.put("sim", "1");
                }
                if (sum <= twoPercent && sum > onePercent) {
                    dataMap.put("sim", "2");
                }
            } else {
                int ranSim = ran.nextInt(simNum);
                dataMap.put("sim", simList.get(ranSim));
            }

            //随机生成发售日期
            Calendar calendar = Calendar.getInstance();
            int year = ran.nextInt(6) + (calendar.get(Calendar.YEAR) - 5);//默认发售日期在5年内
            int month = ran.nextInt(12) + 1;
            int day = 1;
            if (month == 4 || month == 6 || month == 9 || month == 11) {
                //如果月份只有三十天的话，重新生成小于31天的day
                day = ran.nextInt(30) + 1;
            }
            if (month == 2) {
                //如果是2月，只有28天或者29天
                if (year % 4 == 0) {
                    //闰年
                    day = ran.nextInt(29) + 1;
                } else {
                    day = ran.nextInt(28) + 1;
                }
            }
            String launchDate = year + "-" + month + "-" + day;
            dataMap.put("launchDate", launchDate);
            //把数据放到list内
            dataList.add(dataMap);
            sum++;
        }
        //生成csv文件
        List<String> title = Arrays.asList("brand", "phoneModel", "shopName", "comment", "camera", "cpuModel", "rate", "battery", "wireless", "power", "system", "weight", "inch", "5G", "sim", "launchDate");
        String filePath = "/Users/jackzhang/IdeaProjects/HadoopServer/src/main/resources/data" + "/" + generateDTO.getName() + ".csv";
        CsvUtils.exportCsv(title, dataList, filePath);
        test();
        uploadFileToHDFS(filePath, generateDTO.getName()+".csv");
        //每次生成数据时需要记录到数据库
        GenerateLogVO generateLogVO = new GenerateLogVO();
        generateLogVO.setName(generateDTO.getName());
        generateLogVO.setNum(generateDTO.getNum());
        generateLogVO.setStatus("0");
        generateLogVO.setSystemPercent(generateDTO.getSystemPercent());
        generateLogVO.setSimPercent(generateDTO.getSimPercent());
        generateLogVO.setBrand(generateDTO.getBrand());
        generateLogVO.setModel(generateDTO.getModel());
        generateLogVO.setOperateTime(new Date());
        paramMapper.addGenerateLog(generateLogVO);
        System.out.println("随机生成数据记录到数据库完成！");
        //每0.1秒去hdfs查看文件是否存在，如果循环100次不存在则跳过下载
        for (int i = 0;i<100;i++){
            Thread.sleep(100);//停顿0.1秒
            if (isHDFSPathExist("/spark/"+generateDTO.getName()+".csv")){
                hdfsDownload("/spark/"+generateDTO.getName()+".csv");
                break;
            }
        }

//        File file = new File("/Users/jackzhang/IdeaProjects/HadoopServer/src/main/resources/mapper/" + generateDTO.getName() + ".csv");
//        DataProcess dataProcess = new DataProcess();
//        for (int i = 0;i<100;i++){
//            Thread.sleep(100);//停顿0.1秒
//            if (file.exists()){
//                dataProcess.compute("/Users/jackzhang/IdeaProjects/HadoopServer/src/main/resources/mapper/"+generateDTO.getName()+".csv");
//                break;
//            }
//        }

    }


    public static void uploadFileToHDFS(String filePath,String fileName) throws IOException {
        Configuration conf = new Configuration();
        conf.set("fs.defaultFS", "hdfs://10.7.120.133:9000");
        FileSystem fs = FileSystem.get(conf);
        Path src = new Path(filePath);
        Path dest = new Path("/spark/"+fileName);
        fs.copyFromLocalFile(src, dest);
        System.out.println("上传成功");
    }

    public static void test() throws IOException {
        Socket socket = new Socket("10.7.120.133", 666);
        System.out.println(socket);
    }

    public static void hdfsDownload(String path) throws IOException {
        Configuration conf = new Configuration();
        conf.set("fs.defaultFS", "hdfs://10.7.120.133:9000");
        FileSystem fs = FileSystem.newInstance(conf);
        fs.copyToLocalFile(new Path(path), new Path("/Users/jackzhang/IdeaProjects/HadoopServer/src/main/resources/mapper"));
        System.out.println("hadoop文件下载成功");
    }

    public static boolean isHDFSPathExist(String path) throws IOException {
        Configuration conf = new Configuration();
        conf.set("fs.defaultFS", "hdfs://10.7.120.133:9000");
        conf.set("fs.hdfs.impl", "org.apache.hadoop.hdfs.DistributedFileSystem");
        try(FileSystem fs = FileSystem.get(conf)) {
            if (fs.exists(new Path(path))) {
                return true;
            } else {
                return false;
            }
        }
    }

    @Override
    public List<GenerateLogVO> getLogData(int start, int end) {
        return paramMapper.getLogData(start, end);
    }

}
