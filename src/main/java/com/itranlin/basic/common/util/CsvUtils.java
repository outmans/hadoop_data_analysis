package com.itranlin.basic.common.util;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.List;
import java.util.Map;

public class CsvUtils {


    /**
     * 导出csv文件
     * @param titles   导出文件列头
     * @param list     具体导出数据
     * @param fileName 文件名称
     * @param exportPath 文件输出路径
     */
    public static void exportCsv(List<String> titles, List<Map<String, Object>> list, String fileName, String exportPath) throws IOException, IllegalArgumentException {
        StringBuilder expStr = new StringBuilder();
        BufferedWriter csvFileOutputStream = null;
        try {
            //创建文件
            File csvFile = File.createTempFile(fileName, ".csv", new File(exportPath));
            csvFileOutputStream = new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(csvFile.toPath()), StandardCharsets.UTF_8), 1024);
            //csv文件是逗号分隔，除第一个外，每次写入一个单元格数据后需要输入逗号
            for (String title : titles) {
                expStr.append(title).append(",");
            }
            //删除最后一个逗号
            expStr.deleteCharAt(expStr.lastIndexOf(","));
            //写完文件头后换行
            expStr.append("\n");
            //写内容
            for (Map<String, Object> map : list) {
                for (String key : map.keySet()) {
                    String val = map.get(key) != null ? map.get(key).toString() : "";
                    expStr.append(val).append(",");
                }
                //删除最后一个逗号
                expStr.deleteCharAt(expStr.lastIndexOf(","));
                //写完一行换行
                expStr.append("\n");
            }
            csvFileOutputStream.write(String.valueOf(expStr));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭流，否则会导致文件缺失
            if (csvFileOutputStream != null) {
                csvFileOutputStream.close();
            }
        }
    }

}

