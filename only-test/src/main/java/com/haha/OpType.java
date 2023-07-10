package com.haha;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum OpType {
    OP_RUN_SQL(""),
    OP_RUN_FL(""),
    FL_TASK(""),
    FL_CUSTOMIZED("python_feature_processing"),
    FL_CUSTOMIZED_PUSH_MODEL(""),
    FL_PUSH_MODEL(""),
    FL_CUSTOMIZED_MERGE_DATA("sample_table_union"),
    FL_CUSTOMIZED_MERGE_VIRTUAL("table_unoin"),
    FL_PSI("psi_expand"),
    FL_SPLIT_DATA("split_table"),
    OP_READ_DATA("read_table"),
    OP_MULTI_READ_DATA("read_table"),
    OP_PSI_V3("psi"),
    OP_PSI_V4("psi"),
    OP_TABLE_STATISTICS("table_statistics"),
    OPERATOR_TABLE_STATISTICS(""),
    OP_WOE_BINNING_V3("woe_bin"),
    OP_DATASET_SPLIT_V2("dataset_split"),
    OP_WOE_SUBSTITUTION("woe_bin"),
    OP_SSLR_V2("lr_model"),
    OP_INFERENCE_V2("prediction"),
    OP_BICLASSIFIER_EVALUATION_V2("biclassifierI_evaluation"),
    OP_BICLASSIFIER_EVALUATION_V3("biclassifierI_evaluation"),
    OP_BICLASSIFIER_EVALUATION_V5("biclassifierI_evaluation"),
    OP_STATS_PVA("pva"),
    OP_STATS_PVA_V2("pva"),
    OP_STATS_SSVIF("vif"),
    OP_STATS_SSCORR("corr"),
    OP_DATASET_SAMPLE("random_sampling"),
    OP_SCORE_CARD_V2("scorecard"),
    OP_SCORE_CARD_V3("scorecard"),
    OP_STATS_PSI("population_stability"),
    OP_STATS_PVALUE("p_value"),
    OP_REGRESSION_EVALUATION("regression_evaluation"),
    OP_SGB_V5("xgboost_model"),
    OP_SGB_V6("xgboost_model"),
    OP_XGB_V1("xgboost_model"),
    OP_XGB_V2("xgboost_model"),
    OP_WRITE_DATA("write_data"),
    OP_SGB_V4("xgboost_model"),
    OP_READ_FEDTABLE("read_joint_table"),
    OP_BATCH_PREDICT(""),
    OP_OUTLIER("outlier"),
    OP_DATA_TRANSFORM("data_transform"),
    OP_SSLR_V4("lr_model"),
    OP_ONEHOT_ENCODING("onehot"),
    OP_ONEHOT_SUBSTITUTION("onehot"),
    OP_EQUAL_CUT_BINNING("ef_ew_bin"),
    OP_EQUAL_CUT_SUBSTITUTION("ef_ew_bin"),
    OP_SSGLM_V1("glm_model"),
    OP_ONEHOT("onehot"),
    OP_EQUAL_CUTTING("ef_ew_bin"),
    OP_WOE_BINNING_PACKET("woe_bin"),
    TEE_SQL("tee_sql"),
    TEE_SQL_ANALYSIS("tee_sql_analysis"),
    OP_BINNING_MODIFY("binning_modify"),
    OP_MODEL_AUTO_SUBMIT("model_auto_submit")
    ;

    String opMsg;
}
