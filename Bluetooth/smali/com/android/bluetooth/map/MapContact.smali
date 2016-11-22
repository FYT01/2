.class public Lcom/android/bluetooth/map/MapContact;
.super Ljava/lang/Object;
.source "MapContact.java"


# instance fields
.field private final mId:J

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    .line 29
    iput-object p3, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;
    .locals 2
    .param p0, "id"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/android/bluetooth/map/MapContact;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/map/MapContact;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getXBtUid()Lcom/android/bluetooth/SignedLongLong;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 52
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    iget-wide v2, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXBtUidString()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    return-object v0
.end method
