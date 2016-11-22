.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BluetoothLauncherActivity"

.field private static final V:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    .line 70
    const-string/jumbo v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareContent"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    if-nez p2, :cond_0

    .line 252
    const/16 v18, 0x0

    return-object v18

    .line 255
    :cond_0
    const/4 v7, 0x0

    .line 256
    .local v7, "fileUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 258
    .local v12, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f060063

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".html"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "fileName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 264
    new-instance v15, Ljava/lang/StringBuffer;

    const-string/jumbo v18, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body>"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 267
    .local v15, "sb":Ljava/lang/StringBuffer;
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, "text":Ljava/lang/String;
    const-string/jumbo v18, "(?i)(http|https)://"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 272
    .local v17, "webUrlProtocol":Ljava/util/regex/Pattern;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 273
    sget-object v19, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 273
    const-string/jumbo v19, ")|("

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 274
    sget-object v19, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 274
    const-string/jumbo v19, ")|("

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 275
    sget-object v19, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 275
    const-string/jumbo v19, ")"

    .line 272
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 277
    .local v13, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 278
    .local v10, "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 279
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "matchStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 283
    .local v9, "link":Ljava/lang/String;
    sget-object v18, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 284
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 285
    .local v14, "proto":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 288
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 289
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 288
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 304
    .end local v9    # "link":Ljava/lang/String;
    .end local v14    # "proto":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    if-eqz v9, :cond_1

    .line 305
    const-string/jumbo v18, "<a href=\"%s\">%s</a>"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "href":Ljava/lang/String;
    invoke-virtual {v10, v15, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileUri":Landroid/net/Uri;
    .end local v8    # "href":Ljava/lang/String;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "matchStr":Ljava/lang/String;
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v15    # "sb":Ljava/lang/StringBuffer;
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .line 324
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string/jumbo v18, "BluetoothLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "FileNotFoundException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    if-eqz v12, :cond_3

    .line 333
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 339
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    return-object v7

    .line 293
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileUri":Landroid/net/Uri;
    .restart local v9    # "link":Ljava/lang/String;
    .restart local v10    # "m":Ljava/util/regex/Matcher;
    .restart local v11    # "matchStr":Ljava/lang/String;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "proto":Ljava/util/regex/Matcher;
    .restart local v15    # "sb":Ljava/lang/StringBuffer;
    .restart local v16    # "text":Ljava/lang/String;
    .restart local v17    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :cond_4
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "link":Ljava/lang/String;
    goto :goto_1

    .line 297
    .end local v14    # "proto":Ljava/util/regex/Matcher;
    .local v9, "link":Ljava/lang/String;
    :cond_5
    sget-object v18, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 298
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mailto:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "link":Ljava/lang/String;
    goto :goto_1

    .line 301
    .local v9, "link":Ljava/lang/String;
    :cond_6
    sget-object v18, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 302
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "tel:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "link":Ljava/lang/String;
    goto/16 :goto_1

    .line 309
    .end local v9    # "link":Ljava/lang/String;
    .end local v11    # "matchStr":Ljava/lang/String;
    :cond_7
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 310
    const-string/jumbo v18, "</body></html>"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 314
    .local v2, "byteBuff":[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 315
    .local v12, "outStream":Ljava/io/FileOutputStream;
    if-eqz v12, :cond_8

    .line 316
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v12, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 317
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 318
    .local v7, "fileUri":Landroid/net/Uri;
    if-eqz v7, :cond_8

    .line 319
    const-string/jumbo v18, "BluetoothLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Created one file for shared content: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 320
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    .line 319
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    .end local v7    # "fileUri":Landroid/net/Uri;
    :cond_8
    if-eqz v12, :cond_3

    .line 333
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 335
    :catch_1
    move-exception v4

    .line 336
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 328
    .end local v2    # "byteBuff":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v15    # "sb":Ljava/lang/StringBuffer;
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :catch_2
    move-exception v5

    .line 329
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v18, "BluetoothLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 332
    if-eqz v12, :cond_3

    .line 333
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 335
    :catch_3
    move-exception v4

    .line 336
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 326
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 327
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v18, "BluetoothLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IOException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 332
    if-eqz v12, :cond_3

    .line 333
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 335
    :catch_5
    move-exception v4

    .line 336
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 335
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v4

    .line 336
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 330
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 332
    if-eqz v12, :cond_9

    .line 333
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 330
    :cond_9
    :goto_3
    throw v18

    .line 335
    :catch_7
    move-exception v4

    .line 336
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 349
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 350
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 352
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 356
    .local v1, "end":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 357
    .local v7, "start":I
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 359
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 360
    .local v0, "c":I
    if-ne v0, v9, :cond_4

    .line 362
    const/4 v2, 0x1

    .local v2, "i":I
    sub-int v4, v1, v7

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 363
    const-string/jumbo v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 379
    .end local v0    # "c":I
    .end local v1    # "end":I
    .end local v5    # "out":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_3
    return-object p0

    .line 366
    .restart local v0    # "c":I
    .restart local v1    # "end":I
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    .restart local v7    # "start":I
    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    .line 367
    :cond_5
    const-string/jumbo v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    .line 369
    const-string/jumbo v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    .line 371
    const-string/jumbo v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 372
    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    .line 373
    const-string/jumbo v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 223
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "airplane_mode_on"

    .line 222
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    .line 224
    .local v2, "isAirplaneModeOn":Z
    :goto_0
    if-nez v2, :cond_1

    .line 225
    return v7

    .line 222
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isAirplaneModeOn":Z
    goto :goto_0

    .line 230
    :cond_1
    const-string/jumbo v6, "airplane_mode_radios"

    .line 229
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 233
    :goto_1
    if-nez v3, :cond_3

    .line 234
    return v7

    .line 232
    :cond_2
    const-string/jumbo v6, "bluetooth"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .local v3, "isAirplaneSensitive":Z
    goto :goto_1

    .line 239
    .end local v3    # "isAirplaneSensitive":Z
    :cond_3
    const-string/jumbo v6, "airplane_mode_toggleable_radios"

    .line 238
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "airplaneModeToggleableRadios":Ljava/lang/String;
    if-nez v1, :cond_4

    const/4 v4, 0x0

    .line 242
    :goto_2
    if-eqz v4, :cond_5

    .line 243
    return v7

    .line 241
    :cond_4
    const-string/jumbo v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .local v4, "isAirplaneToggleable":Z
    goto :goto_2

    .line 247
    .end local v4    # "isAirplaneToggleable":Z
    :cond_5
    return v8
.end method

.method private final launchDevicePicker()V
    .locals 4

    .prologue
    .line 197
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothLauncherActivity"

    const-string/jumbo v3, "Prepare Enable BT!! "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    .end local v0    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothLauncherActivity"

    const-string/jumbo v3, "BT already enabled!! "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "in1":Landroid/content/Intent;
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 208
    const/4 v3, 0x2

    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 210
    const-string/jumbo v3, "com.android.bluetooth"

    .line 209
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 212
    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothLauncherActivity"

    const-string/jumbo v3, "Launching android.bluetooth.devicepicker.action.LAUNCH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 77
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBluetoothAllowed()Z

    move-result v12

    if-nez v12, :cond_1

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-class v12, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v3, "in":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-string/jumbo v12, "title"

    const v13, 0x7f06000a

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v12, "content"

    const v13, 0x7f06000b

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 88
    return-void

    .line 96
    .end local v3    # "in":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 98
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 100
    .local v7, "stream":Landroid/net/Uri;
    const-string/jumbo v12, "android.intent.extra.TEXT"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 106
    .local v1, "extra_text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 107
    sget-boolean v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Get ACTION_SEND intent: Uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "; mimetype = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    invoke-direct {v12, p0, v9, v7}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    .local v8, "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 121
    return-void

    .line 122
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_3
    if-eqz v1, :cond_6

    if-eqz v9, :cond_6

    .line 123
    sget-boolean v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v12, :cond_4

    const-string/jumbo v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Get ACTION_SEND intent with Extra_text = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 124
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 123
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 124
    const-string/jumbo v14, "; mimetype = "

    .line 123
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    invoke-direct {p0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v2

    .line 126
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 127
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    invoke-direct {v12, p0, v9, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    .restart local v8    # "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 138
    return-void

    .line 140
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_5
    const-string/jumbo v12, "BluetoothLauncherActivity"

    const-string/jumbo v13, "Error trying to do set text...File not created!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 142
    return-void

    .line 145
    .end local v2    # "fileUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v12, "BluetoothLauncherActivity"

    const-string/jumbo v13, "type is null; or sending file URI is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 147
    return-void

    .line 149
    .end local v1    # "extra_text":Ljava/lang/CharSequence;
    .end local v7    # "stream":Landroid/net/Uri;
    .end local v9    # "type":Ljava/lang/String;
    :cond_7
    const-string/jumbo v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 150
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "mimeType":Ljava/lang/String;
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 152
    .local v11, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_9

    if-eqz v11, :cond_9

    .line 153
    sget-boolean v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v12, :cond_8

    const-string/jumbo v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Get ACTION_SHARE_MULTIPLE intent: uris "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n Type= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_8
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    invoke-direct {v12, p0, v6, v11}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .restart local v8    # "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 166
    return-void

    .line 168
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_9
    const-string/jumbo v12, "BluetoothLauncherActivity"

    const-string/jumbo v13, "type is null; or sending files URIs are null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 170
    return-void

    .line 173
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v11    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_a
    const-string/jumbo v12, "android.btopp.intent.action.OPEN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 174
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 175
    .local v10, "uri":Landroid/net/Uri;
    sget-boolean v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v12, :cond_b

    const-string/jumbo v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Get ACTION_OPEN intent: Uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v5, "intent1":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v12, "com.android.bluetooth"

    const-class v13, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 73
    .end local v5    # "intent1":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_c
    :goto_0
    return-void

    .line 184
    :cond_d
    const-string/jumbo v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unsupported action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0
.end method
