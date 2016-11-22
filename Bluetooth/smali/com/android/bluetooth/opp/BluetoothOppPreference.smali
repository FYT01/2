.class public Lcom/android/bluetooth/opp/BluetoothOppPreference;
.super Ljava/lang/Object;
.source "BluetoothOppPreference.java"


# static fields
.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothOppPreference"

.field private static final V:Z


# instance fields
.field private mChannelPreference:Landroid/content/SharedPreferences;

.field private mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNamePreference:Landroid/content/SharedPreferences;

.field private mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method private getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 2
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # I

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->init(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 74
    return-object v2

    .line 76
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 82
    return v2

    .line 83
    :cond_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "btopp_names"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    .line 90
    const-string/jumbo v1, "btopp_channels"

    .line 89
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    .line 95
    return v2
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "BluetoothOppPreference"

    const-string/jumbo v1, "Dumping Names:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v0, "BluetoothOppPreference"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v0, "BluetoothOppPreference"

    const-string/jumbo v1, "Dumping Channels:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v0, "BluetoothOppPreference"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public getChannel(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "key":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "channel":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "channel":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, "channel":Ljava/lang/Integer;
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothOppPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    const-string/jumbo v4, " as "

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FF:FF:FF:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "localhost"

    return-object v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 109
    return-object v0

    .line 112
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public removeChannel(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setChannel(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # I
    .param p3, "channel"    # I

    .prologue
    .line 138
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setchannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    if-eq p3, v2, :cond_1

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothOppPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setname for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
