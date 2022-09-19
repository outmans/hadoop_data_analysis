package com.itranlin.basic.common.util.script;

@FunctionalInterface
public interface ScriptProgress {
    Integer progress(String lineText);
}
