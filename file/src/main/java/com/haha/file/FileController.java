/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */
package com.haha.file;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 *
 * @author 雨土
 * @version FileController.java, v 0.1 2023年06月21日 14:43 雨土
 */
@Slf4j
@RestController
@RequestMapping("file")
public class FileController {

    private final String UPLOAD_FILE_PATH = "/home/secretflow/";

    @PostMapping
    public String uploadFile(@RequestParam("file") MultipartFile file) {
        String fileName = file.getOriginalFilename();
        File dest = new File(UPLOAD_FILE_PATH + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
        } catch (Exception e) {
            log.error("{}", e);
            return "error";
        }
        return "ok";
    }
}