.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Landroid/net/Uri;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "direction"    # I
    .param p7, "destination"    # Ljava/lang/String;
    .param p8, "visibility"    # I
    .param p9, "confirm"    # I
    .param p10, "status"    # I
    .param p11, "totalBytes"    # J
    .param p13, "currentBytes"    # J
    .param p15, "timestamp"    # J
    .param p17, "mediaScanned"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 76
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 77
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 80
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 81
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 82
    iput p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 83
    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 84
    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 85
    iput-wide p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 86
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 87
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 88
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 73
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_1
    return v1
.end method

.method public isObsolete()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v1, v0, :cond_0

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadyToStart()Z
    .locals 4

    .prologue
    const/16 v3, 0xbe

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 98
    return v1

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v0, v1, :cond_1

    .line 102
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 104
    return v1

    .line 107
    :cond_1
    return v2
.end method
