.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field private static synthetic -com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I = null

.field public static final CONVO_ID_TYPE_EMAIL_IM:J = 0x2L

.field public static final CONVO_ID_TYPE_SMS_MMS:J = 0x1L

.field private static final D:Z = true

.field private static ESCAPE_CHAR:B = 0x0t

.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x200000000000000L

.field private static final HANDLE_TYPE_IM_MASK:J = 0x1000000000000000L

.field private static final HANDLE_TYPE_MASK:J = -0x100000000000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x100000000000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x800000000000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x400000000000000L

.field private static final LONG_LONG_LENGTH:I = 0x20

.field static final MAP_EVENT_REPORT_V10:I = 0xa

.field static final MAP_EVENT_REPORT_V11:I = 0xb

.field static final MAP_EVENT_REPORT_V12:I = 0xc

.field static final MAP_FEATURE_BROWSING_BIT:I = 0x4

.field static final MAP_FEATURE_CONVERSATION_VERSION_COUNTER_BIT:I = 0x2000

.field static final MAP_FEATURE_DATABASE_INDENTIFIER_BIT:I = 0x800

.field static final MAP_FEATURE_DEFAULT_BITMASK:I = 0x1f

.field static final MAP_FEATURE_DEFINED_TIMESTAMP_FORMAT_BIT:I = 0x40000

.field static final MAP_FEATURE_DELETE_BIT:I = 0x10

.field static final MAP_FEATURE_EVENT_REPORT_V12_BIT:I = 0x80

.field static final MAP_FEATURE_EXTENDED_EVENT_REPORT_11_BIT:I = 0x40

.field static final MAP_FEATURE_FOLDER_VERSION_COUNTER_BIT:I = 0x1000

.field static final MAP_FEATURE_INSTANCE_INFORMATION_BIT:I = 0x20

.field static final MAP_FEATURE_MESSAGE_FORMAT_V11_BIT:I = 0x100

.field static final MAP_FEATURE_MESSAGE_LISTING_FORMAT_V11_BIT:I = 0x200

.field static final MAP_FEATURE_NOTIFICATION_BIT:I = 0x2

.field static final MAP_FEATURE_NOTIFICATION_FILTERING_BIT:I = 0x20000

.field static final MAP_FEATURE_NOTIFICATION_REGISTRATION_BIT:I = 0x1

.field static final MAP_FEATURE_PARTICIPANT_CHAT_STATE_CHANGE_BIT:I = 0x8000

.field static final MAP_FEATURE_PARTICIPANT_PRESENCE_CHANGE_BIT:I = 0x4000

.field static final MAP_FEATURE_PBAP_CONTACT_CROSS_REFERENCE_BIT:I = 0x10000

.field static final MAP_FEATURE_PERSISTENT_MESSAGE_HANDLE_BIT:I = 0x400

.field static final MAP_FEATURE_UPLOADING_BIT:I = 0x8

.field static final MAP_MESSAGE_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_FORMAT_V11:I = 0xb

.field static final MAP_MESSAGE_LISTING_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_LISTING_FORMAT_V11:I = 0xb

.field static final MAP_V10_STR:Ljava/lang/String; = "1.0"

.field static final MAP_V11_STR:Ljava/lang/String; = "1.1"

.field static final MAP_V12_STR:Ljava/lang/String; = "1.2"

.field private static SPACE:B = 0x0t

.field private static TAB:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "BluetoothMapUtils"

.field private static final V:Z

.field private static p:Ljava/util/regex/Pattern;


# direct methods
.method private static synthetic -getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    .line 427
    const-string/jumbo v0, "=\\?(.+?)\\?(.)\\?(.+?(?=\\?=))\\?="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->p:Ljava/util/regex/Pattern;

    .line 585
    const/16 v0, 0x3d

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->ESCAPE_CHAR:B

    .line 586
    const/16 v0, 0x9

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->TAB:B

    .line 587
    const/16 v0, 0x20

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SPACE:B

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encodeQuotedPrintable([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x100

    const/16 v8, 0x10

    .line 590
    if-nez p0, :cond_0

    .line 591
    return-object v9

    .line 594
    :cond_0
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v7}, Ljava/util/BitSet;-><init>(I)V

    .line 596
    .local v6, "printable":Ljava/util/BitSet;
    const/16 v5, 0x21

    .local v5, "i":I
    :goto_0
    const/16 v7, 0x3c

    if-gt v5, v7, :cond_1

    .line 597
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 596
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 599
    :cond_1
    const/16 v5, 0x3e

    :goto_1
    const/16 v7, 0x7e

    if-gt v5, v7, :cond_2

    .line 600
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 602
    :cond_2
    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->TAB:B

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 603
    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->SPACE:B

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 604
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 605
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    :goto_2
    array-length v7, p0

    if-ge v5, v7, :cond_5

    .line 606
    aget-byte v0, p0, v5

    .line 607
    .local v0, "b":I
    if-gez v0, :cond_3

    .line 608
    add-int/lit16 v0, v0, 0x100

    .line 610
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 611
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 605
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 613
    :cond_4
    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->ESCAPE_CHAR:B

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 615
    .local v3, "hex1":C
    and-int/lit8 v7, v0, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 616
    .local v4, "hex2":C
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 617
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 621
    .end local v0    # "b":I
    .end local v3    # "hex1":C
    .end local v4    # "hex2":C
    :cond_5
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 622
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v7, ""

    return-object v7
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 5
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 327
    .local v0, "cpHandle":J
    const-string/jumbo v2, "BluetoothMapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-> MAP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-wide v2, 0xffffffffffffffL

    and-long/2addr v0, v2

    .line 330
    const-string/jumbo v2, "BluetoothMapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "->CP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-wide v0
.end method

.method public static getDateTimeString(J)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 119
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 121
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLongAsString(J)Ljava/lang/String;
    .locals 14
    .param p0, "v"    # J

    .prologue
    const-wide/16 v12, -0x1

    const/16 v7, 0x37

    const/16 v6, 0x30

    const/16 v10, 0xa

    .line 147
    const/16 v5, 0x10

    new-array v2, v5, [C

    .line 148
    .local v2, "result":[C
    and-long v8, p0, v12

    long-to-int v3, v8

    .line 149
    .local v3, "v1":I
    const/16 v5, 0x20

    shr-long v8, p0, v5

    and-long/2addr v8, v12

    long-to-int v4, v8

    .line 151
    .local v4, "v2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_2

    .line 152
    and-int/lit8 v0, v4, 0xf

    .line 153
    .local v0, "c":I
    if-ge v0, v10, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v0, v5

    .line 154
    rsub-int/lit8 v5, v1, 0x7

    int-to-char v8, v0

    aput-char v8, v2, v5

    .line 155
    shr-int/lit8 v4, v4, 0x4

    .line 156
    and-int/lit8 v0, v3, 0xf

    .line 157
    if-ge v0, v10, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v0, v5

    .line 158
    rsub-int/lit8 v5, v1, 0xf

    int-to-char v8, v0

    aput-char v8, v2, v5

    .line 159
    shr-int/lit8 v3, v3, 0x4

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 153
    goto :goto_1

    :cond_1
    move v5, v7

    .line 157
    goto :goto_2

    .line 161
    .end local v0    # "c":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static getLongFromString(Ljava/lang/String;)J
    .locals 12
    .param p0, "valueStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 177
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 178
    :cond_0
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLongFromString(): converting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 181
    .local v4, "nibbles":[B
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  byte values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    const/4 v1, 0x0

    .line 184
    .local v1, "count":I
    array-length v3, v4

    .line 185
    .local v3, "length":I
    const-wide/16 v6, 0x0

    .line 186
    .local v6, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, v3, :cond_9

    .line 187
    aget-byte v0, v4, v2

    .line 188
    .local v0, "c":B
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 189
    add-int/lit8 v5, v0, -0x30

    int-to-byte v0, v5

    .line 201
    :goto_1
    const/4 v5, 0x4

    shl-long/2addr v6, v5

    .line 202
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 204
    const/16 v5, 0x10

    if-le v1, v5, :cond_7

    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "String to large - count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 191
    add-int/lit8 v5, v0, -0x37

    int-to-byte v0, v5

    .line 190
    goto :goto_1

    .line 192
    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_5

    const/16 v5, 0x66

    if-gt v0, v5, :cond_5

    .line 193
    add-int/lit8 v5, v0, -0x57

    int-to-byte v0, v5

    .line 192
    goto :goto_1

    .line 194
    :cond_5
    const/16 v5, 0x20

    if-le v0, v5, :cond_6

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_8

    .line 195
    :cond_6
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping c = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [B

    const/4 v11, 0x0

    aput-byte v0, v10, v11

    const-string/jumbo v11, "US-ASCII"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 196
    const-string/jumbo v9, "\'"

    .line 195
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 199
    :cond_8
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid character:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 206
    .end local v0    # "c":B
    :cond_9
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_a
    return-wide v6
.end method

.method public static getLongLongAsString(JJ)Ljava/lang/String;
    .locals 12
    .param p0, "vLow"    # J
    .param p2, "vHigh"    # J

    .prologue
    .line 211
    const/16 v8, 0x20

    new-array v3, v8, [C

    .line 212
    .local v3, "result":[C
    const-wide/16 v8, -0x1

    and-long/2addr v8, p0

    long-to-int v4, v8

    .line 213
    .local v4, "v1":I
    const/16 v8, 0x20

    shr-long v8, p0, v8

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v5, v8

    .line 214
    .local v5, "v2":I
    const-wide/16 v8, -0x1

    and-long/2addr v8, p2

    long-to-int v6, v8

    .line 215
    .local v6, "v3":I
    const/16 v8, 0x20

    shr-long v8, p2, v8

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v7, v8

    .line 218
    .local v7, "v4":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x8

    if-ge v2, v8, :cond_4

    .line 219
    and-int/lit8 v0, v5, 0xf

    .line 220
    .local v0, "c":I
    const/16 v8, 0xa

    if-ge v0, v8, :cond_0

    const/16 v8, 0x30

    :goto_1
    add-int/2addr v0, v8

    .line 221
    and-int/lit8 v1, v7, 0xf

    .line 222
    .local v1, "d":I
    const/16 v8, 0xa

    if-ge v1, v8, :cond_1

    const/16 v8, 0x30

    :goto_2
    add-int/2addr v1, v8

    .line 223
    rsub-int/lit8 v8, v2, 0x17

    int-to-char v9, v0

    aput-char v9, v3, v8

    .line 224
    rsub-int/lit8 v8, v2, 0x7

    int-to-char v9, v1

    aput-char v9, v3, v8

    .line 225
    shr-int/lit8 v5, v5, 0x4

    .line 226
    shr-int/lit8 v7, v7, 0x4

    .line 227
    and-int/lit8 v0, v4, 0xf

    .line 228
    const/16 v8, 0xa

    if-ge v0, v8, :cond_2

    const/16 v8, 0x30

    :goto_3
    add-int/2addr v0, v8

    .line 229
    and-int/lit8 v1, v6, 0xf

    .line 230
    const/16 v8, 0xa

    if-ge v1, v8, :cond_3

    const/16 v8, 0x30

    :goto_4
    add-int/2addr v1, v8

    .line 231
    rsub-int/lit8 v8, v2, 0x1f

    int-to-char v9, v0

    aput-char v9, v3, v8

    .line 232
    rsub-int/lit8 v8, v2, 0xf

    int-to-char v9, v1

    aput-char v9, v3, v8

    .line 233
    shr-int/lit8 v4, v4, 0x4

    .line 234
    shr-int/lit8 v6, v6, 0x4

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "d":I
    :cond_0
    const/16 v8, 0x37

    goto :goto_1

    .line 222
    .restart local v1    # "d":I
    :cond_1
    const/16 v8, 0x37

    goto :goto_2

    .line 228
    :cond_2
    const/16 v8, 0x37

    goto :goto_3

    .line 230
    :cond_3
    const/16 v8, 0x37

    goto :goto_4

    .line 237
    .end local v0    # "c":I
    .end local v1    # "d":I
    :cond_4
    const/4 v2, 0x0

    :goto_5
    const/16 v8, 0x20

    if-ge v2, v8, :cond_5

    .line 238
    aget-char v8, v3, v2

    const/16 v9, 0x30

    if-eq v8, v9, :cond_6

    .line 242
    :cond_5
    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v9, v2, 0x20

    invoke-direct {v8, v3, v2, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v8

    .line 237
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public static getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 4
    .param p0, "cpHandle"    # J
    .param p2, "messageType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 292
    const-string/jumbo v0, "-1"

    .line 293
    .local v0, "mapHandle":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->-getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 305
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :pswitch_1
    const-wide/16 v2, 0x1

    invoke-static {p0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 302
    :pswitch_2
    const-wide/16 v2, 0x2

    invoke-static {p0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 4
    .param p0, "cpHandle"    # J
    .param p2, "messageType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 253
    const-string/jumbo v0, "-1"

    .line 255
    .local v0, "mapHandle":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 256
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->-getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :pswitch_0
    const-wide/high16 v2, 0x100000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    :pswitch_1
    return-object v0

    .line 262
    :pswitch_2
    const-wide/high16 v2, 0x400000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_3
    const-wide/high16 v2, 0x800000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_4
    const-wide/high16 v2, 0x200000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_5
    const-wide/high16 v2, 0x1000000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_0
    const-string/jumbo v1, "BluetoothMapUtils"

    const-string/jumbo v2, " Invalid messageType input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 317
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 341
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 343
    .local v0, "cpHandle":J
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 344
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    .line 345
    :cond_0
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 346
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    .line 347
    :cond_1
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 348
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    .line 349
    :cond_2
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 350
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    .line 351
    :cond_3
    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 352
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    .line 354
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Message type not found in handle string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static printCursor(Landroid/database/Cursor;)V
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\nprintCursor:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 130
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "last_thread_activity"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_0

    .line 133
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "last_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_0

    .line 134
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "last_online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 135
    :cond_0
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "\n"

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    const-string/jumbo v3, "\n"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_2
    const-string/jumbo v2, "BluetoothMapUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public static quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 23
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 486
    .local v13, "output":[B
    const/4 v10, 0x0

    .line 488
    .local v10, "input":[B
    :try_start_0
    const-string/jumbo v17, "US-ASCII"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 492
    .end local v10    # "input":[B
    :goto_0
    if-nez v10, :cond_0

    .line 493
    const-string/jumbo v17, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    return-object v17

    .line 496
    :cond_0
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x2

    .line 501
    .local v16, "stopCnt":I
    const/4 v8, 0x0

    .local v8, "in":I
    const/4 v11, 0x0

    .local v11, "out":I
    move v12, v11

    .end local v11    # "out":I
    .local v12, "out":I
    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_16

    .line 502
    aget-byte v2, v10, v8

    .line 503
    .local v2, "b0":B
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v2, v0, :cond_12

    .line 504
    add-int/lit8 v8, v8, 0x1

    aget-byte v3, v10, v8

    .line 505
    .local v3, "b1":B
    add-int/lit8 v8, v8, 0x1

    aget-byte v4, v10, v8

    .line 506
    .local v4, "b2":B
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    move v11, v12

    .line 501
    .end local v3    # "b1":B
    .end local v4    # "b2":B
    .end local v12    # "out":I
    .restart local v11    # "out":I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v12, v11

    .end local v11    # "out":I
    .restart local v12    # "out":I
    goto :goto_1

    .line 509
    .restart local v3    # "b1":B
    .restart local v4    # "b2":B
    :cond_2
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v3, v0, :cond_9

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_9

    .line 511
    :cond_3
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v4, v0, :cond_c

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v4, v0, :cond_c

    .line 513
    :cond_4
    :goto_3
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_5

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Found hex number: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "%c%c"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_5
    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_e

    add-int/lit8 v17, v3, -0x30

    move/from16 v0, v17

    int-to-byte v3, v0

    .line 518
    :cond_6
    :goto_4
    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v4, v0, :cond_10

    add-int/lit8 v17, v4, -0x30

    move/from16 v0, v17

    int-to-byte v4, v0

    .line 522
    :cond_7
    :goto_5
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_8

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Resulting nibble values: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 523
    const-string/jumbo v19, "b1=%x b2=%x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 522
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_8
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "out":I
    .restart local v11    # "out":I
    shl-int/lit8 v17, v3, 0x4

    or-int v17, v17, v4

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v13, v12

    .line 526
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Resulting value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "0x%2x"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, -0x1

    aget-byte v21, v13, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 509
    .end local v11    # "out":I
    .restart local v12    # "out":I
    :cond_9
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v3, v0, :cond_a

    const/16 v17, 0x46

    move/from16 v0, v17

    if-le v3, v0, :cond_3

    .line 510
    :cond_a
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v3, v0, :cond_b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-le v3, v0, :cond_3

    .line 529
    :cond_b
    const-string/jumbo v17, "BluetoothMapUtils"

    const-string/jumbo v18, "Received wrongly quoted printable encoded text. Continuing at best effort..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "out":I
    .restart local v11    # "out":I
    aput-byte v2, v13, v12

    .line 534
    add-int/lit8 v8, v8, -0x2

    .line 535
    goto/16 :goto_2

    .line 511
    .end local v11    # "out":I
    .restart local v12    # "out":I
    :cond_c
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v4, v0, :cond_d

    const/16 v17, 0x46

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    .line 512
    :cond_d
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v4, v0, :cond_b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v4, v0, :cond_b

    goto/16 :goto_3

    .line 515
    :cond_e
    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v3, v0, :cond_f

    add-int/lit8 v17, v3, -0x41

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v3, v0

    goto/16 :goto_4

    .line 516
    :cond_f
    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v3, v0, :cond_6

    add-int/lit8 v17, v3, -0x61

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v3, v0

    goto/16 :goto_4

    .line 519
    :cond_10
    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v4, v0, :cond_11

    add-int/lit8 v17, v4, -0x41

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v4, v0

    goto/16 :goto_5

    .line 520
    :cond_11
    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v4, v0, :cond_7

    add-int/lit8 v17, v4, -0x61

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v4, v0

    goto/16 :goto_5

    .line 537
    .end local v3    # "b1":B
    .end local v4    # "b2":B
    :cond_12
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "out":I
    .restart local v11    # "out":I
    aput-byte v2, v13, v12

    goto/16 :goto_2

    .line 544
    .end local v2    # "b0":B
    :goto_6
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_13

    .line 545
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "out":I
    .restart local v12    # "out":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "in":I
    .local v9, "in":I
    aget-byte v17, v10, v8

    aput-byte v17, v13, v11

    move v11, v12

    .end local v12    # "out":I
    .restart local v11    # "out":I
    move v8, v9

    .end local v9    # "in":I
    .restart local v8    # "in":I
    goto :goto_6

    .line 548
    :cond_13
    const/4 v14, 0x0

    .line 551
    .local v14, "result":Ljava/lang/String;
    if-nez p1, :cond_15

    .line 552
    const-string/jumbo p1, "UTF-8"

    .line 565
    :cond_14
    :goto_7
    :try_start_1
    new-instance v15, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v15, v13, v0, v11, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .local v15, "result":Ljava/lang/String;
    :goto_8
    move-object v14, v15

    .line 572
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/String;
    :goto_9
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    return-object v17

    .line 554
    .restart local v14    # "result":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 556
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 557
    const-string/jumbo p1, "UTF-8"
    :try_end_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 559
    :catch_0
    move-exception v6

    .line 560
    .local v6, "e":Ljava/nio/charset/IllegalCharsetNameException;
    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received unknown charset: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " - using UTF-8."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo p1, "UTF-8"

    goto :goto_7

    .line 566
    .end local v6    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v5

    .line 569
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v17, "UTF-8"

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v13, v0, v11, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    .line 570
    :catch_2
    move-exception v7

    .local v7, "e2":Ljava/io/UnsupportedEncodingException;
    goto :goto_9

    .line 489
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "e2":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "in":I
    .end local v11    # "out":I
    .end local v14    # "result":Ljava/lang/String;
    .end local v16    # "stopCnt":I
    .restart local v10    # "input":[B
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "input":[B
    .restart local v8    # "in":I
    .restart local v12    # "out":I
    .restart local v16    # "stopCnt":I
    :cond_16
    move v11, v12

    .end local v12    # "out":I
    .restart local v11    # "out":I
    goto :goto_6
.end method

.method public static stripEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 435
    const/4 v7, 0x0

    .line 436
    .local v7, "str":Ljava/lang/String;
    const-string/jumbo v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "?="

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 441
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 442
    .end local v7    # "str":Ljava/lang/String;
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 443
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "match":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "charset":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "encoding":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "encodedText":Ljava/lang/String;
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Matching:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\nCharset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\nEncoding : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 448
    const-string/jumbo v11, "\nText: "

    .line 447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string/jumbo v9, "Q"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 451
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: Quoted Printable string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v7, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    .line 453
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 454
    .end local v7    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v9, "B"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 458
    :try_start_0
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: base64 string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 460
    const/4 v10, 0x0

    .line 459
    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .local v8, "str":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: decoded string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    move-object v7, v8

    .end local v8    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 465
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: string not encoded as base64: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: Unsupported charset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: Hit unknown encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    .end local v0    # "charset":Ljava/lang/String;
    .end local v3    # "encodedText":Ljava/lang/String;
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "match":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 463
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v3    # "encodedText":Ljava/lang/String;
    .restart local v4    # "encoding":Ljava/lang/String;
    .restart local v5    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "match":Ljava/lang/String;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v7, v8

    .end local v8    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_2

    .line 465
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    move-object v7, v8

    .end local v8    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    const-string/jumbo v6, ""

    return-object v6

    .line 371
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-array v5, v6, [C

    .line 373
    .local v5, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "o":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "l":I
    move v4, v3

    .end local v3    # "o":I
    .local v4, "o":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 374
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 375
    .local v0, "c":C
    const/16 v6, 0x20

    if-lt v0, v6, :cond_2

    const v6, 0xd7ff

    if-gt v0, v6, :cond_2

    .line 376
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "o":I
    .restart local v3    # "o":I
    aput-char v0, v5, v4

    .line 373
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "o":I
    .restart local v4    # "o":I
    goto :goto_0

    .line 375
    :cond_2
    const v6, 0xe000

    if-lt v0, v6, :cond_3

    const v6, 0xfffd

    if-le v0, v6, :cond_1

    :cond_3
    move v3, v4

    .end local v4    # "o":I
    .restart local v3    # "o":I
    goto :goto_1

    .line 380
    .end local v0    # "c":C
    .end local v3    # "o":I
    .restart local v4    # "o":I
    :cond_4
    if-ne v1, v4, :cond_5

    .line 381
    return-object p0

    .line 383
    :cond_5
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method public static truncateUtf8StringToBytearray(Ljava/lang/String;I)[B
    .locals 8
    .param p0, "utf8String"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 399
    .local v2, "utf8Bytes":[B
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 399
    const/4 v5, 0x0

    .line 400
    const/4 v6, 0x0

    .line 399
    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    array-length v3, v2

    if-le v3, p1, :cond_0

    .line 409
    add-int/lit8 v3, p1, -0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    .line 410
    add-int/lit8 v1, p1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 411
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_1

    .line 414
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 415
    aput-byte v7, v2, v1

    .line 425
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "BluetoothMapUtils"

    const-string/jumbo v4, "truncateUtf8StringToBytearray: getBytes exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    throw v0

    .line 410
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    :cond_2
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 422
    add-int/lit8 v3, p1, -0x1

    aput-byte v7, v2, v3

    goto :goto_1
.end method
