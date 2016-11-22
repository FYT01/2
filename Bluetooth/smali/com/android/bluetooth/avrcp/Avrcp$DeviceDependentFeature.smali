.class Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceDependentFeature"
.end annotation


# instance fields
.field private isAbsoluteVolumeSupportingDevice:Z

.field private isBrowsingSupported:Z

.field private isMusicAppResponsePending:Z

.field private keyPressState:I

.field private mAbsVolRetryTimes:I

.field private mAbsoluteVolume:I

.field private mAddressedPlayerChangedNT:I

.field private mAvailablePlayersChangedNT:I

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentPathUid:Ljava/lang/String;

.field private mCurrentPlayState:I

.field private mFeatures:I

.field private mLastDirection:I

.field private mLastSetVolume:I

.field private mMediaUri:Landroid/net/Uri;

.field private mNextPosMs:J

.field private mNowPlayingContentChangedNT:I

.field private mPlayPosChangedNT:I

.field private mPlayStatusChangedNT:I

.field private mPlaybackIntervalMs:J

.field private mPlayerStatusChangeNT:I

.field private mPrevPosMs:J

.field private mRequestedAddressedPlayerPackageName:Ljava/lang/String;

.field private mTrackChangedNT:I

.field private mVolCmdInProgress:Z

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isMusicAppResponsePending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->keyPressState:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mFeatures:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastDirection:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastSetVolume:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mNextPosMs:J

    return-wide v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mNowPlayingContentChangedNT:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayPosChangedNT:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayStatusChangedNT:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlaybackIntervalMs:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayerStatusChangeNT:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPrevPosMs:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mTrackChangedNT:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mVolCmdInProgress:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsoluteVolume:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAddressedPlayerChangedNT:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAvailablePlayersChangedNT:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPathUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isAbsoluteVolumeSupportingDevice:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isBrowsingSupported:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPathUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPlayState:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mFeatures:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastDirection:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastSetVolume:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mMediaUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mNextPosMs:J

    return-wide p1
.end method

.method static synthetic -set17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mNowPlayingContentChangedNT:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayPosChangedNT:I

    return p1
.end method

.method static synthetic -set19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayStatusChangedNT:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isMusicAppResponsePending:Z

    return p1
.end method

.method static synthetic -set20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlaybackIntervalMs:J

    return-wide p1
.end method

.method static synthetic -set21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayerStatusChangeNT:I

    return p1
.end method

.method static synthetic -set22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPrevPosMs:J

    return-wide p1
.end method

.method static synthetic -set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set24(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mTrackChangedNT:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mVolCmdInProgress:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->keyPressState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsVolRetryTimes:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsoluteVolume:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAddressedPlayerChangedNT:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAvailablePlayersChangedNT:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 287
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPlayState:I

    .line 288
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayStatusChangedNT:I

    .line 289
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayerStatusChangeNT:I

    .line 290
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mTrackChangedNT:I

    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlaybackIntervalMs:J

    .line 292
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mPlayPosChangedNT:I

    .line 293
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mFeatures:I

    .line 294
    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsoluteVolume:I

    .line 295
    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastSetVolume:I

    .line 296
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mLastDirection:I

    .line 297
    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mVolCmdInProgress:Z

    .line 298
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAbsVolRetryTimes:I

    .line 299
    invoke-static {p1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-set1(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 300
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->keyPressState:I

    .line 301
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAddressedPlayerChangedNT:I

    .line 302
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mAvailablePlayersChangedNT:I

    .line 303
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mNowPlayingContentChangedNT:I

    .line 304
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    .line 305
    const-string/jumbo v0, "invalid"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPath:Ljava/lang/String;

    .line 306
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mCurrentPathUid:Ljava/lang/String;

    .line 307
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->mMediaUri:Landroid/net/Uri;

    .line 308
    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isMusicAppResponsePending:Z

    .line 309
    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isBrowsingSupported:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->isAbsoluteVolumeSupportingDevice:Z

    .line 285
    return-void
.end method
