.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;,
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I = 0x0

.field private static final CCH:Ljava/lang/String; = "cch"

.field private static final CCH_PATH:Ljava/lang/String; = "/telecom/cch"

.field private static final D:Z = true

.field private static final ICH:Ljava/lang/String; = "ich"

.field private static final ICH_PATH:Ljava/lang/String; = "/telecom/ich"

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final MCH:Ljava/lang/String; = "mch"

.field private static final MCH_PATH:Ljava/lang/String; = "/telecom/mch"

.field private static final NEED_SEND_BODY:I = -0x1

.field private static final OCH:Ljava/lang/String; = "och"

.field private static final OCH_PATH:Ljava/lang/String; = "/telecom/och"

.field public static ORDER_BY_ALPHABETICAL:I = 0x0

.field public static ORDER_BY_INDEXED:I = 0x0

.field private static final PB:Ljava/lang/String; = "pb"

.field private static final PBAP_TARGET:[B

.field private static final PB_PATH:Ljava/lang/String; = "/telecom/pb"

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM_CCH_PATH:Ljava/lang/String; = "/SIM1/telecom/cch"

.field private static final SIM_ICH_PATH:Ljava/lang/String; = "/SIM1/telecom/ich"

.field private static final SIM_MCH_PATH:Ljava/lang/String; = "/SIM1/telecom/mch"

.field private static final SIM_OCH_PATH:Ljava/lang/String; = "/SIM1/telecom/och"

.field private static final SIM_PATH:Ljava/lang/String; = "/SIM1/telecom"

.field private static final SIM_PB_PATH:Ljava/lang/String; = "/SIM1/telecom/pb"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexServer"

.field private static final TELECOM_PATH:Ljava/lang/String; = "/telecom"

.field private static final TYPE_LISTING:Ljava/lang/String; = "x-bt/vcard-listing"

.field private static final TYPE_PB:Ljava/lang/String; = "x-bt/phonebook"

.field private static final TYPE_VCARD:Ljava/lang/String; = "x-bt/vcard"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z

.field private static final VCARD_NAME_SUFFIX_LENGTH:I = 0x5

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const-string/jumbo v0, "BluetoothPbap"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 79
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "/telecom"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/telecom/ich"

    aput-object v1, v0, v2

    const-string/jumbo v1, "/telecom/och"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "/telecom/mch"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "/telecom/cch"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1/telecom"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1/telecom/ich"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1/telecom/och"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "/SIM1/telecom/mch"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1/telecom/cch"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "/SIM1/telecom/pb"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 79
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 158
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 160
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 162
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 164
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 59
    return-void

    .line 73
    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 145
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 156
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 182
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 183
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 180
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 1095
    const/4 v1, 0x1

    .line 1097
    .local v1, "returnvalue":Z
    if-eqz p0, :cond_0

    .line 1098
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1106
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1112
    :cond_1
    :goto_1
    return v1

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v1, 0x0

    goto :goto_0

    .line 1108
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1109
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I
    .locals 17
    .param p1, "maxListCount"    # I
    .param p2, "listStartOffset"    # I
    .param p3, "searchValue"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/StringBuilder;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "SIM"    # Z

    .prologue
    .line 661
    const/4 v5, 0x0

    .local v5, "itemsFound":I
    const/4 v10, 0x0

    .line 662
    .local v10, "pos":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v12, "savedPosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 664
    .local v8, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v13, "selectedNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_2

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 671
    .local v8, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p1

    if-lt v14, v0, :cond_3

    move/from16 v11, p1

    .line 672
    .local v11, "requestSize":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 673
    .local v7, "listSize":I
    const-string/jumbo v2, ""

    .line 675
    .local v2, "compareValue":Ljava/lang/String;
    const-string/jumbo v14, "BluetoothPbapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "search by "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", requestSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " offset="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 676
    const-string/jumbo v16, " searchValue="

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string/jumbo v14, "number"

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 679
    const/4 v9, 0x0

    .line 681
    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_4

    .line 682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 686
    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_6

    .line 687
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 688
    const-string/jumbo v14, "BluetoothPbapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "compareValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_5

    .line 690
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 691
    .local v3, "currentValue":Ljava/lang/String;
    const-string/jumbo v14, "BluetoothPbapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "currentValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 693
    const-string/jumbo v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 694
    const/16 v14, 0x2c

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 695
    :cond_0
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 669
    .end local v2    # "compareValue":Ljava/lang/String;
    .end local v3    # "currentValue":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "listSize":I
    .end local v9    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "requestSize":I
    .local v8, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 671
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .restart local v11    # "requestSize":I
    goto/16 :goto_1

    .line 684
    .restart local v2    # "compareValue":Ljava/lang/String;
    .restart local v7    # "listSize":I
    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_2

    .line 686
    .restart local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 701
    :cond_6
    move/from16 v6, p2

    .local v6, "j":I
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_7

    .line 702
    if-ge v5, v11, :cond_7

    .line 703
    add-int/lit8 v5, v5, 0x1

    .line 704
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v14, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 702
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 707
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 708
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 737
    .end local v6    # "j":I
    .end local v9    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    return v5

    .line 711
    .end local v4    # "i":I
    :cond_8
    if-eqz p3, :cond_9

    .line 712
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 714
    :cond_9
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v7, :cond_d

    .line 715
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    .restart local v3    # "currentValue":Ljava/lang/String;
    const-string/jumbo v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 718
    const/16 v14, 0x2c

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 720
    :cond_a
    if-eqz p3, :cond_c

    .line 721
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 722
    :cond_b
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 728
    .end local v3    # "currentValue":Ljava/lang/String;
    :cond_d
    move/from16 v4, p2

    .restart local v4    # "i":I
    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_e

    .line 729
    if-ge v5, v11, :cond_e

    .line 730
    add-int/lit8 v5, v5, 0x1

    .line 731
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v14, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 734
    :cond_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 735
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_6
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, "selection":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1135
    .end local v0    # "selection":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call log selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    return-object v0

    .line 1124
    .restart local v0    # "selection":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "type=1"

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 1127
    .local v0, "selection":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "type=2"

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 1130
    .local v0, "selection":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "type=3"

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 1122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 14
    .param p1, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p2, "size"    # I
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 793
    const/4 v3, 0x1

    new-array v11, v3, [B

    .line 794
    .local v11, "misnum":[B
    new-instance v8, Ljavax/obex/ApplicationParameter;

    invoke-direct {v8}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 798
    .local v8, "ap":Ljavax/obex/ApplicationParameter;
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v3, :cond_4

    .line 799
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Need Phonebook size in response header."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 802
    const/4 v3, 0x2

    new-array v13, v3, [B

    .line 804
    .local v13, "pbsize":[B
    move/from16 v0, p2

    div-int/lit16 v3, v0, 0x100

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v13, v4

    .line 805
    move/from16 v0, p2

    rem-int/lit16 v3, v0, 0x100

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v13, v4

    .line 806
    const/16 v3, 0x8

    .line 807
    const/4 v4, 0x2

    .line 806
    invoke-virtual {v8, v3, v4, v13}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 809
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v3, :cond_2

    .line 810
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 811
    const/4 v12, 0x0

    .line 813
    .local v12, "nmnum":I
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 816
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 818
    const-string/jumbo v5, "type = 3 AND new = 1"

    .line 820
    const-string/jumbo v7, "date DESC"

    .line 817
    const/4 v4, 0x0

    .line 819
    const/4 v6, 0x0

    .line 815
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 822
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 823
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 824
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_1
    if-lez v12, :cond_3

    .line 828
    :goto_0
    int-to-byte v3, v12

    const/4 v4, 0x0

    aput-byte v3, v11, v4

    .line 829
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "nmnum":I
    :cond_2
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v3

    const/16 v4, 0x4c

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 833
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Send back Phonebook size only, without body info! Size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v3

    return v3

    .line 827
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "nmnum":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 841
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "nmnum":I
    .end local v13    # "pbsize":[B
    :cond_4
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v3, :cond_7

    .line 842
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Need new missed call num in response header."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 844
    const/4 v12, 0x0

    .line 846
    .restart local v12    # "nmnum":I
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 849
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 851
    const-string/jumbo v5, "type = 3 AND new = 1"

    .line 853
    const-string/jumbo v7, "date DESC"

    .line 850
    const/4 v4, 0x0

    .line 852
    const/4 v6, 0x0

    .line 848
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 855
    .restart local v9    # "c":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 856
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 857
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 860
    :cond_6
    if-lez v12, :cond_8

    .line 861
    :goto_1
    int-to-byte v3, v12

    const/4 v4, 0x0

    aput-byte v3, v11, v4

    .line 862
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v3, 0x9

    .line 865
    const/4 v4, 0x1

    .line 864
    invoke-virtual {v8, v3, v4, v11}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 866
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v3

    const/16 v4, 0x4c

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 867
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "nmnum":I
    :cond_7
    const/4 v3, -0x1

    return v3

    .line 860
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "nmnum":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    .line 874
    :catch_0
    move-exception v10

    .line 875
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothPbapObexServer"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/16 v3, 0xd0

    return v3
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 468
    return v3

    .line 470
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 471
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    return v3

    .line 470
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_2
    return v2
.end method

.method private isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 448
    move-object v0, p1

    .line 449
    .local v0, "contentTypeName":Ljava/lang/String;
    const-string/jumbo v3, ".vcf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v5, ".vcf"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    .line 450
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_0
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "nameList":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v1, v3

    .line 458
    .local v2, "subName":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 459
    const/4 v3, 0x1

    return v3

    .line 457
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "subName":Ljava/lang/String;
    :cond_2
    return v4
.end method

.method public static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1188
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :try_start_0
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1183
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1184
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    return-void
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 10
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    .prologue
    const/4 v9, 0x0

    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, "i":I
    const/4 v5, 0x1

    .line 528
    .local v5, "parseOk":Z
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_6

    if-eqz v5, :cond_6

    .line 529
    aget-byte v6, p1, v1

    packed-switch v6, :pswitch_data_0

    .line 593
    const/4 v5, 0x0

    .line 594
    const-string/jumbo v6, "BluetoothPbapObexServer"

    const-string/jumbo v7, "Parse Application Parameter error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 532
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    .line 534
    add-int v6, v1, v2

    aget-byte v6, p1, v6

    if-eqz v6, :cond_0

    .line 535
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 536
    iget-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    add-int v7, v1, v2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v2

    .line 533
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 539
    :cond_1
    add-int/lit8 v1, v1, 0x8

    .line 540
    goto :goto_0

    .line 542
    .end local v2    # "index":I
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 543
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 544
    add-int/lit8 v1, v1, 0x1

    .line 545
    goto :goto_0

    .line 547
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 549
    aget-byte v3, p1, v1

    .line 550
    .local v3, "length":I
    if-nez v3, :cond_2

    .line 551
    const/4 v5, 0x0

    .line 552
    goto :goto_0

    .line 554
    :cond_2
    add-int v6, v1, v3

    aget-byte v6, p1, v6

    if-nez v6, :cond_3

    .line 555
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v3, -0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 559
    :goto_2
    add-int/2addr v1, v3

    .line 560
    add-int/lit8 v1, v1, 0x1

    .line 561
    goto :goto_0

    .line 557
    :cond_3
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, p1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_2

    .line 563
    .end local v3    # "length":I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 564
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 566
    goto :goto_0

    .line 568
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 569
    aget-byte v6, p1, v1

    if-nez v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    if-nez v6, :cond_4

    .line 570
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 576
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 577
    goto/16 :goto_0

    .line 572
    :cond_4
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 573
    .local v0, "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 574
    .local v4, "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_3

    .line 579
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 580
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 581
    .restart local v0    # "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 582
    .restart local v4    # "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 583
    add-int/lit8 v1, v1, 0x2

    .line 584
    goto/16 :goto_0

    .line 586
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 587
    aget-byte v6, p1, v1

    if-eqz v6, :cond_5

    .line 588
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 590
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 591
    goto/16 :goto_0

    .line 599
    :cond_6
    invoke-virtual {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->dump()V

    .line 601
    return v5

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 27
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 1014
    if-eqz p5, :cond_0

    .line 1015
    const-string/jumbo v5, "."

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 1016
    .local v22, "dotIndex":I
    const-string/jumbo v26, "vcf"

    .line 1017
    .local v26, "vcf":Ljava/lang/String;
    if-ltz v22, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v22

    if-gt v0, v5, :cond_0

    .line 1018
    add-int/lit8 v5, v22, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1019
    const-string/jumbo v5, "BluetoothPbapObexServer"

    const-string/jumbo v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/16 v5, 0xc6

    return v5

    .line 1025
    .end local v22    # "dotIndex":I
    .end local v26    # "vcf":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v24

    .line 1026
    .local v24, "pbSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v23

    .line 1027
    .local v23, "needSendBody":I
    const/4 v5, -0x1

    move/from16 v0, v23

    if-eq v0, v5, :cond_1

    .line 1028
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 1029
    return v23

    .line 1032
    :cond_1
    if-nez v24, :cond_3

    .line 1033
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothPbapObexServer"

    const-string/jumbo v6, "PhonebookSize is 0, return."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_2
    const/16 v5, 0xa0

    return v5

    .line 1037
    :cond_3
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v0, v24

    if-lt v0, v5, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v25, v0

    .line 1039
    .local v25, "requestSize":I
    :goto_0
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 1040
    .local v13, "startPoint":I
    if-ltz v13, :cond_4

    move/from16 v0, v24

    if-lt v13, v0, :cond_6

    .line 1041
    :cond_4
    const-string/jumbo v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/16 v5, 0xa0

    return v5

    .line 1038
    .end local v13    # "startPoint":I
    .end local v25    # "requestSize":I
    :cond_5
    move/from16 v25, v24

    .restart local v25    # "requestSize":I
    goto :goto_0

    .line 1046
    .restart local v13    # "startPoint":I
    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    .line 1047
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    .line 1048
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v25

    if-le v0, v5, :cond_7

    .line 1049
    sget v25, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 1053
    :cond_7
    add-int v5, v13, v25

    add-int/lit8 v8, v5, -0x1

    .line 1054
    .local v8, "endPoint":I
    add-int/lit8 v5, v24, -0x1

    if-le v8, v5, :cond_8

    .line 1055
    add-int/lit8 v8, v24, -0x1

    .line 1057
    :cond_8
    const-string/jumbo v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pullPhonebook(): requestSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " startPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1058
    const-string/jumbo v7, " endPoint="

    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1061
    .local v9, "vcard21":Z
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1062
    if-nez v13, :cond_a

    .line 1063
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v10

    .line 1064
    .local v10, "ownerVcard":Ljava/lang/String;
    if-nez v8, :cond_9

    .line 1065
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v5

    return v5

    .line 1067
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 1068
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    .line 1067
    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;Z[B)I

    move-result v5

    return v5

    .line 1071
    .end local v10    # "ownerVcard":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 1072
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v18, v0

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    .line 1071
    invoke-virtual/range {v11 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;Z[B)I

    move-result v5

    return v5

    .line 1074
    :cond_b
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    .line 1075
    if-nez v13, :cond_d

    .line 1076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v10

    .line 1077
    .restart local v10    # "ownerVcard":Ljava/lang/String;
    if-nez v8, :cond_c

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v5

    return v5

    .line 1080
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v5

    return v5

    .line 1084
    .end local v10    # "ownerVcard":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 1085
    const/16 v16, 0x0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    .line 1084
    invoke-virtual/range {v11 .. v16}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v5

    return v5

    .line 1088
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 1089
    add-int/lit8 v17, v13, 0x1

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v20, v0

    .line 1090
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v21, v0

    move-object/from16 v16, p4

    move/from16 v19, v9

    .line 1088
    invoke-virtual/range {v14 .. v21}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I

    move-result v5

    return v5
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "op"    # Ljavax/obex/Operation;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "current_path"    # Ljava/lang/String;

    .prologue
    .line 946
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 947
    :cond_0
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v3, "Name is Null, or the length of name < 5 !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/16 v2, 0xc6

    return v2

    .line 950
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 951
    .local v17, "strIndex":Ljava/lang/String;
    const/4 v4, 0x0

    .line 952
    .local v4, "intIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 961
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v16

    .line 962
    .local v16, "size":I
    if-nez v16, :cond_4

    .line 963
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v3, "PhonebookSize is 0, return."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_3
    const/16 v2, 0xc4

    return v2

    .line 955
    .end local v16    # "size":I
    :catch_0
    move-exception v14

    .line 956
    .local v14, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "catch number format exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v2, 0xc6

    return v2

    .line 967
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "size":I
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 968
    .local v5, "vcard21":Z
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v2, :cond_5

    .line 969
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v3, "wrong path!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/16 v2, 0xc6

    return v2

    .line 971
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 972
    if-ltz v4, :cond_6

    move/from16 v0, v16

    if-lt v4, v0, :cond_7

    .line 973
    :cond_6
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v2, 0xc4

    return v2

    .line 975
    :cond_7
    if-nez v4, :cond_8

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v15

    .line 978
    .local v15, "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 980
    .end local v15    # "ownerVcard":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 981
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    .line 980
    const/4 v6, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I

    move-result v2

    return v2

    .line 983
    :cond_9
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_d

    .line 984
    if-ltz v4, :cond_a

    move/from16 v0, v16

    if-lt v4, v0, :cond_b

    .line 985
    :cond_a
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v2, 0xc4

    return v2

    .line 987
    :cond_b
    if-nez v4, :cond_c

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v15

    .line 990
    .restart local v15    # "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 992
    .end local v15    # "ownerVcard":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 993
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 992
    const/4 v6, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I

    move-result v2

    return v2

    .line 996
    :cond_d
    if-lez v4, :cond_e

    move/from16 v0, v16

    if-le v4, v0, :cond_f

    .line 997
    :cond_e
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/16 v2, 0xc4

    return v2

    .line 1002
    :cond_f
    const/4 v2, 0x1

    if-lt v4, v2, :cond_10

    .line 1003
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 1004
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 1005
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v8, p3

    move v9, v4

    move v10, v4

    move v11, v5

    .line 1003
    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I

    move-result v2

    return v2

    .line 1008
    :cond_10
    const/16 v2, 0xa0

    return v2
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 15
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 884
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 886
    .local v12, "searchAttr":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 888
    :cond_0
    const-string/jumbo v3, "0"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 889
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "searchAttr is not set by PCE, assume search by name by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 903
    .local v14, "size":I
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v14, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v10

    .line 904
    .local v10, "needSendBody":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_5

    .line 905
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 906
    return v10

    .line 890
    .end local v10    # "needSendBody":I
    .end local v14    # "size":I
    :cond_1
    const-string/jumbo v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 899
    :cond_2
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchAttr is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :cond_3
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "search attr not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string/jumbo v3, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 894
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "do not support search by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/16 v3, 0xd1

    return v3

    .line 897
    :cond_4
    const/16 v3, 0xcc

    return v3

    .line 909
    .restart local v10    # "needSendBody":I
    .restart local v14    # "size":I
    :cond_5
    if-nez v14, :cond_7

    .line 910
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "PhonebookSize is 0, return."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_6
    const/16 v3, 0xa0

    return v3

    .line 914
    :cond_7
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 915
    .local v11, "orderPara":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 917
    const-string/jumbo v11, "0"

    .line 918
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Order parameter is not set by PCE. Assume order by \'Indexed\' by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_1
    const-string/jumbo v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 933
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 938
    :cond_8
    :goto_2
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    .line 939
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 940
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v3, p0

    move-object/from16 v5, p4

    .line 938
    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 941
    .local v13, "sendResult":I
    return v13

    .line 920
    .end local v13    # "sendResult":I
    :cond_9
    const-string/jumbo v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 929
    :cond_a
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Order parameter is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 921
    :cond_b
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Order parameter is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_c
    const-string/jumbo v3, "2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 924
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Do not support order by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v3, 0xd1

    return v3

    .line 927
    :cond_d
    const/16 v3, 0xcc

    return v3

    .line 934
    :cond_e
    const-string/jumbo v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 935
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto/16 :goto_2
.end method

.method private final pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "vcardString"    # Ljava/lang/String;

    .prologue
    .line 768
    if-nez p2, :cond_0

    .line 769
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "vcardString is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/16 v3, 0xa0

    return v3

    .line 773
    :cond_0
    const/4 v1, 0x0

    .line 774
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 776
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 777
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 778
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Send Data complete!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 785
    const/16 v2, 0xd0

    .line 788
    :cond_2
    return v2

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open/write outputstrem failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/16 v2, 0xd0

    goto :goto_0
.end method

.method private final pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 5
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 747
    .local v1, "outputStream":Ljava/io/OutputStream;
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Push Header"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string/jumbo v3, "BluetoothPbapObexServer"

    invoke-virtual {p2}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/16 v2, 0xa0

    .line 752
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 753
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 754
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    const/16 v2, 0xd0

    .line 763
    :cond_0
    return v2

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    const/16 v2, 0xd0

    .line 759
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 758
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 759
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 760
    const/16 v2, 0xd0

    .line 758
    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "maxListCount"    # I
    .param p4, "listStartOffset"    # I
    .param p5, "searchValue"    # Ljava/lang/String;
    .param p6, "searchAttr"    # Ljava/lang/String;

    .prologue
    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 610
    .local v9, "itemsFound":I
    const/4 v7, 0x0

    .line 611
    .local v7, "SIM":Z
    const-string/jumbo v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v1, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string/jumbo v1, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 617
    const-string/jumbo v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    const-string/jumbo v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 618
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    .line 652
    :cond_0
    :goto_0
    const-string/jumbo v1, "</vCard-listing>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "itemsFound ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 620
    :cond_2
    const-string/jumbo v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    const-string/jumbo v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 621
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 624
    :cond_3
    const/16 v1, 0xcc

    return v1

    .line 626
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 627
    const/4 v7, 0x1

    .line 628
    const-string/jumbo v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 630
    const-string/jumbo v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 629
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 631
    :cond_5
    const-string/jumbo v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 633
    const-string/jumbo v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 632
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto/16 :goto_0

    .line 636
    :cond_6
    const/16 v1, 0xcc

    return v1

    .line 639
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 640
    .local v11, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_9

    move/from16 v12, p3

    .line 641
    .local v12, "requestSize":I
    :goto_1
    move/from16 v13, p4

    .line 642
    .local v13, "startPoint":I
    add-int v8, v13, v12

    .line 643
    .local v8, "endPoint":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v8, v1, :cond_8

    .line 644
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 646
    :cond_8
    const-string/jumbo v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call log list, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move v10, v13

    .local v10, "j":I
    :goto_2
    if-ge v10, v8, :cond_0

    .line 649
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 648
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 640
    .end local v8    # "endPoint":I
    .end local v10    # "j":I
    .end local v12    # "requestSize":I
    .end local v13    # "startPoint":I
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .restart local v12    # "requestSize":I
    goto :goto_1
.end method

.method private writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "vcfIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1174
    const-string/jumbo v0, "<card handle=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    const-string/jumbo v0, ".vcf\" name=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1178
    const-string/jumbo v0, "\"/>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    return-void
.end method

.method private xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1143
    if-nez p1, :cond_0

    .line 1144
    return-void

    .line 1147
    :cond_0
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 1149
    .local v0, "character":C
    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_6

    .line 1150
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    .line 1151
    const-string/jumbo v2, "&lt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 1153
    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    .line 1154
    const-string/jumbo v2, "&gt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1156
    :cond_2
    const/16 v2, 0x22

    if-ne v0, v2, :cond_3

    .line 1157
    const-string/jumbo v2, "&quot;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1159
    :cond_3
    const/16 v2, 0x27

    if-ne v0, v2, :cond_4

    .line 1160
    const-string/jumbo v2, "&#039;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1162
    :cond_4
    const/16 v2, 0x26

    if-ne v0, v2, :cond_5

    .line 1163
    const-string/jumbo v2, "&amp;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1167
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1142
    :cond_6
    return-void
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 251
    const-string/jumbo v0, "BluetoothPbapObexServer"

    const-string/jumbo v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 253
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 254
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    .prologue
    .line 1117
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 320
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 321
    const-string/jumbo v1, "BluetoothPbapObexServer"

    const-string/jumbo v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 11
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v10, 0xd0

    const/16 v9, 0x10

    const/16 v8, 0xc6

    .line 189
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 192
    const/16 v5, 0x46

    :try_start_0
    invoke-virtual {p1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 193
    .local v4, "uuid":[B
    if-nez v4, :cond_1

    .line 194
    return v8

    .line 196
    :cond_1
    const-string/jumbo v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnect(): uuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    array-length v5, v4

    if-eq v5, v9, :cond_2

    .line 199
    const-string/jumbo v5, "BluetoothPbapObexServer"

    const-string/jumbo v6, "Wrong UUID length"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v8

    .line 202
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_4

    .line 203
    aget-byte v5, v4, v1

    sget-object v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_3

    .line 204
    const-string/jumbo v5, "BluetoothPbapObexServer"

    const-string/jumbo v6, "Wrong UUID"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v8

    .line 202
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_4
    const/16 v5, 0x4a

    invoke-virtual {p2, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/16 v5, 0x4a

    :try_start_1
    invoke-virtual {p1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 216
    .local v3, "remote":[B
    if-eqz v3, :cond_5

    .line 217
    const-string/jumbo v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnect(): remote="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v5, 0x46

    invoke-virtual {p2, v5, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :cond_5
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "BluetoothPbapObexServer"

    const-string/jumbo v6, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 229
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x1389

    iput v5, v2, Landroid/os/Message;->what:I

    .line 230
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 232
    const/16 v5, 0xa0

    return v5

    .line 209
    .end local v1    # "i":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "remote":[B
    .end local v4    # "uuid":[B
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v10

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    .restart local v4    # "uuid":[B
    :catch_1
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v10
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 266
    const-string/jumbo v0, "BluetoothPbapObexServer"

    const-string/jumbo v1, "onDelete(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 268
    const/16 v0, 0xc0

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 237
    const-string/jumbo v1, "BluetoothPbapObexServer"

    const-string/jumbo v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 240
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 241
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 244
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothPbapObexServer"

    const-string/jumbo v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 17
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 328
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 329
    const/4 v14, 0x0

    .line 330
    .local v14, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 331
    .local v10, "reply":Ljavax/obex/HeaderSet;
    const-string/jumbo v15, ""

    .line 332
    .local v15, "type":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 333
    .local v6, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 334
    .local v3, "appParam":[B
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 336
    .local v4, "appParamValue":Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v14

    .line 337
    .local v14, "request":Ljavax/obex/HeaderSet;
    const/16 v2, 0x42

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 338
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 339
    const/16 v2, 0x4c

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "appParam":[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v3, "appParam":[B
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v2, :cond_0

    invoke-static {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 346
    :cond_0
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OnGet type is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "; name is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-nez v15, :cond_1

    .line 349
    const/16 v2, 0xc6

    return v2

    .line 340
    .end local v3    # "appParam":[B
    .end local v14    # "request":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v13

    .line 341
    .local v13, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "request headers error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v2, 0xd0

    return v2

    .line 359
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v3    # "appParam":[B
    .restart local v14    # "request":Ljavax/obex/HeaderSet;
    :cond_1
    const/16 v16, 0x1

    .line 360
    .local v16, "validName":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    const/16 v16, 0x0

    .line 364
    :cond_2
    if-eqz v16, :cond_3

    if-eqz v16, :cond_12

    const-string/jumbo v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 365
    :cond_3
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Guess what carkit actually want from current path ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 365
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    const-string/jumbo v7, ")"

    .line 365
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 369
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 391
    :cond_4
    :goto_0
    const-string/jumbo v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGet(): appParamValue.needTag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_1
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 431
    :cond_5
    const-string/jumbo v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v2

    return v2

    .line 370
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 371
    :cond_7
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_0

    .line 372
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 373
    :cond_9
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_0

    .line 374
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 375
    :cond_b
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto/16 :goto_0

    .line 377
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 378
    :cond_d
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_0

    .line 379
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/telecom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 381
    :cond_f
    if-nez v16, :cond_4

    const-string/jumbo v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "invalid vcard listing request in default folder"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/16 v2, 0xc4

    return v2

    .line 385
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 386
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_0

    .line 388
    :cond_11
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "mCurrentpath is not valid path!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v2, 0xc6

    return v2

    .line 396
    :cond_12
    const-string/jumbo v2, "pb"

    const-string/jumbo v5, "pb"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 397
    const-string/jumbo v2, "SIM1"

    const-string/jumbo v5, "SIM1"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 396
    if-eqz v2, :cond_13

    .line 398
    const-string/jumbo v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 396
    if-nez v2, :cond_14

    .line 399
    :cond_13
    const-string/jumbo v2, "pb"

    const-string/jumbo v5, "pb"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string/jumbo v5, "/SIM1/telecom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 399
    if-eqz v2, :cond_15

    .line 400
    const-string/jumbo v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 396
    if-eqz v2, :cond_15

    .line 402
    :cond_14
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 403
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download SIM phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 404
    :cond_15
    const-string/jumbo v2, "pb"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 405
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 406
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    :cond_16
    const-string/jumbo v2, "ich"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 408
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 409
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download incoming calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 410
    :cond_17
    const-string/jumbo v2, "och"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 411
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 412
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download outgoing calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 413
    :cond_18
    const-string/jumbo v2, "mch"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 414
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 415
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 416
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download missed calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    :cond_19
    const-string/jumbo v2, "cch"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 418
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 419
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "download combined calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 421
    :cond_1a
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "Input name doesn\'t contain valid info!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v2, 0xc4

    return v2

    .line 427
    :cond_1b
    const/16 v2, 0xc0

    return v2

    .line 435
    :cond_1c
    const-string/jumbo v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 436
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 439
    :cond_1d
    const-string/jumbo v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v11, p1

    move-object v12, v6

    .line 440
    invoke-direct/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 442
    :cond_1e
    const-string/jumbo v2, "BluetoothPbapObexServer"

    const-string/jumbo v5, "unknown type request!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v2, 0xc6

    return v2
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 2
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 259
    const-string/jumbo v0, "BluetoothPbapObexServer"

    const-string/jumbo v1, "onPut(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 261
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/4 v6, 0x0

    .line 274
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 275
    :cond_0
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "before setPath, mCurrentPath ==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 278
    .local v0, "current_path_tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 280
    .local v2, "tmp_path":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tmp_path":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .local v2, "tmp_path":Ljava/lang/String;
    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "backup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " create="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p3, :cond_4

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 289
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 309
    :cond_2
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 310
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "after setPath, mCurrentPath ==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    const/16 v3, 0xa0

    return v3

    .line 281
    .end local v2    # "tmp_path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "Get name header fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/16 v3, 0xd0

    return v3

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "tmp_path":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 294
    const-string/jumbo v0, ""

    goto :goto_0

    .line 296
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_6
    if-eqz p4, :cond_7

    .line 302
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "path create is forbidden!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v3, 0xc3

    return v3

    .line 305
    :cond_7
    const-string/jumbo v3, "BluetoothPbapObexServer"

    const-string/jumbo v4, "path is not legal"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v3, 0xc4

    return v3
.end method
