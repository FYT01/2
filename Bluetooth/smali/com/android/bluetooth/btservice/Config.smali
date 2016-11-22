.class public Lcom/android/bluetooth/btservice/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final PROFILE_SERVICES:[Ljava/lang/Class;

.field private static final PROFILE_SERVICES_FLAG:[I

.field private static SUPPORTED_PROFILES:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "AdapterServiceConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 54
    new-array v0, v4, [Ljava/lang/Class;

    .line 55
    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    aput-object v1, v0, v3

    .line 56
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    const-class v1, Lcom/android/bluetooth/hid/HidService;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 59
    const-class v1, Lcom/android/bluetooth/hdp/HealthService;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    const-class v1, Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    const-class v1, Lcom/android/bluetooth/gatt/GattService;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 62
    const-class v1, Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 63
    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 64
    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 65
    const-class v1, Lcom/android/bluetooth/sap/SapService;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 66
    const-class v1, Lcom/android/bluetooth/hid/HidDevService;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 54
    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    .line 71
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    .line 86
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    .line 46
    return-void

    .line 71
    :array_0
    .array-data 4
        0x7f070003
        0x7f070000
        0x7f070001
        0x7f070005
        0x7f070002
        0x7f070007
        0x7f070009
        0x7f07000d
        0x7f070004
        0x7f07000e
        0x7f07000f
        0x7f07000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addAudioProfiles(Ljava/lang/String;)Z
    .locals 7
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-class v3, Lcom/android/bluetooth/btservice/Config;

    monitor-enter v3

    .line 114
    :try_start_0
    const-string/jumbo v2, "persist.service.bt.a2dp.sink"

    .line 115
    const/4 v4, 0x0

    .line 114
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, "isA2dpSinkEnabled":Z
    const-string/jumbo v2, "persist.service.bt.hfp.client"

    .line 117
    const/4 v4, 0x0

    .line 116
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    .local v1, "isHfpClientEnabled":Z
    const-string/jumbo v2, "AdapterServiceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addA2dpProfile: isA2dpSinkEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "isHfpClientEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 119
    const-string/jumbo v5, " serviceName "

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v2, "A2dpSinkService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v2, "A2dpService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    monitor-exit v3

    .line 124
    return v6

    :cond_1
    monitor-exit v3

    .line 122
    return v6

    .line 126
    :cond_2
    :try_start_1
    const-string/jumbo v2, "HeadsetClientService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 128
    :cond_3
    const-string/jumbo v2, "HeadsetService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    monitor-exit v3

    .line 129
    return v6

    :cond_4
    monitor-exit v3

    .line 127
    return v6

    .line 131
    :cond_5
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "isA2dpSinkEnabled":Z
    .end local v1    # "isHfpClientEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 93
    .local v2, "resources":Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 94
    return-void

    .line 97
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 99
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 100
    .local v3, "supported":Z
    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-static {p0, v5}, Lcom/android/bluetooth/btservice/Config;->isProfileDisabled(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_3
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/btservice/Config;->addAudioProfiles(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    const-string/jumbo v5, "AdapterServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v3    # "supported":Z
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 108
    .local v4, "totalProfiles":I
    new-array v5, v4, [Ljava/lang/Class;

    sput-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    .line 109
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private static isProfileDisabled(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Ljava/lang/Class;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    const/4 v4, -0x1

    .line 141
    .local v4, "profileIndex":I
    const-class v8, Lcom/android/bluetooth/hfp/HeadsetService;

    if-ne p1, v8, :cond_1

    .line 142
    const/4 v4, 0x1

    .line 165
    :cond_0
    :goto_0
    const/4 v8, -0x1

    if-ne v4, v8, :cond_b

    .line 166
    const-string/jumbo v6, "AdapterServiceConfig"

    const-string/jumbo v8, "Could not find profile bit mask"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v7

    .line 143
    :cond_1
    const-class v8, Lcom/android/bluetooth/a2dp/A2dpService;

    if-ne p1, v8, :cond_2

    .line 144
    const/4 v4, 0x2

    goto :goto_0

    .line 145
    :cond_2
    const-class v8, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-ne p1, v8, :cond_3

    .line 146
    const/16 v4, 0xb

    goto :goto_0

    .line 147
    :cond_3
    const-class v8, Lcom/android/bluetooth/hid/HidService;

    if-ne p1, v8, :cond_4

    .line 148
    const/4 v4, 0x4

    goto :goto_0

    .line 149
    :cond_4
    const-class v8, Lcom/android/bluetooth/hdp/HealthService;

    if-ne p1, v8, :cond_5

    .line 150
    const/4 v4, 0x3

    goto :goto_0

    .line 151
    :cond_5
    const-class v8, Lcom/android/bluetooth/pan/PanService;

    if-ne p1, v8, :cond_6

    .line 152
    const/4 v4, 0x5

    goto :goto_0

    .line 153
    :cond_6
    const-class v8, Lcom/android/bluetooth/gatt/GattService;

    if-ne p1, v8, :cond_7

    .line 154
    const/4 v4, 0x7

    goto :goto_0

    .line 155
    :cond_7
    const-class v8, Lcom/android/bluetooth/map/BluetoothMapService;

    if-ne p1, v8, :cond_8

    .line 156
    const/16 v4, 0x9

    goto :goto_0

    .line 157
    :cond_8
    const-class v8, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-ne p1, v8, :cond_9

    .line 158
    const/16 v4, 0x10

    goto :goto_0

    .line 159
    :cond_9
    const-class v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-ne p1, v8, :cond_a

    .line 160
    const/16 v4, 0xc

    goto :goto_0

    .line 161
    :cond_a
    const-class v8, Lcom/android/bluetooth/sap/SapService;

    if-ne p1, v8, :cond_0

    .line 162
    const/16 v4, 0xa

    goto :goto_0

    .line 170
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 172
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "bluetooth_disabled_profiles"

    .line 171
    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 173
    .local v0, "disabledProfilesBitMask":J
    shl-int v8, v6, v4

    int-to-long v2, v8

    .line 175
    .local v2, "profileBit":J
    and-long v8, v0, v2

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    :goto_1
    return v6

    :cond_c
    move v6, v7

    goto :goto_1
.end method
