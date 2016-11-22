.class public Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
.super Ljava/lang/Object;
.source "ContentTypeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/ContentTypeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v8, 0x0

    .line 213
    .local v8, "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    const-string/jumbo v6, ""

    .line 214
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 216
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v2, Ljava/io/StringReader;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v18, "parser":Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v8    # "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v20

    .line 235
    .local v20, "type":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v19

    .line 237
    .local v19, "subType":Ljava/lang/String;
    if-eqz v20, :cond_3

    if-eqz v19, :cond_3

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/ArrayList;

    move-result-object v14

    .line 241
    .local v14, "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 243
    .local v16, "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_3

    if-eqz v16, :cond_3

    .line 244
    const/4 v11, 0x0

    .local v11, "i":I
    move-object/from16 v17, v7

    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 245
    if-nez v17, :cond_4

    .line 246
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 247
    .end local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    :try_start_3
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 248
    .local v13, "paramName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 249
    .local v15, "paramValue":Ljava/lang/String;
    invoke-interface {v7, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 244
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v17, v7

    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 226
    .end local v11    # "i":I
    .end local v13    # "paramName":Ljava/lang/String;
    .end local v14    # "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "paramValue":Ljava/lang/String;
    .end local v16    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "subType":Ljava/lang/String;
    .end local v20    # "type":Ljava/lang/String;
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_0
    move-exception v10

    .line 227
    .local v10, "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 230
    :cond_0
    new-instance v8, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    .end local v8    # "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    .local v8, "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    goto/16 :goto_0

    .line 220
    .end local v10    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    .local v8, "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_1
    move-exception v9

    .line 221
    .local v9, "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 224
    :cond_1
    move-object v8, v9

    .local v8, "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    goto/16 :goto_0

    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parseException":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .end local v9    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .restart local v11    # "i":I
    .restart local v14    # "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "subType":Ljava/lang/String;
    .restart local v20    # "type":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, v17

    .line 256
    .end local v11    # "i":I
    .end local v14    # "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "subType":Ljava/lang/String;
    .end local v20    # "type":Ljava/lang/String;
    :cond_3
    :goto_3
    new-instance v2, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lorg/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V

    return-object v2

    .line 254
    :catch_2
    move-exception v12

    .local v12, "npe":Ljava/lang/NullPointerException;
    goto :goto_3

    .end local v12    # "npe":Ljava/lang/NullPointerException;
    .restart local v11    # "i":I
    .restart local v14    # "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "subType":Ljava/lang/String;
    .restart local v20    # "type":Ljava/lang/String;
    :catch_3
    move-exception v12

    .restart local v12    # "npe":Ljava/lang/NullPointerException;
    move-object/from16 v7, v17

    .end local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "npe":Ljava/lang/NullPointerException;
    .restart local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v7, v17

    .end local v17    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_2
.end method
