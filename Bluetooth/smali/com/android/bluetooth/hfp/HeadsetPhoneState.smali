.class Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mBatteryCharge:I

.field private mCallState:I

.field private mContext:Landroid/content/Context;

.field private mListening:Z

.field private mMicVolume:I

.field private mNumActive:I

.field private mNumHeld:I

.field private mNumber:Ljava/lang/String;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoam:I

.field private mService:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignal:I

.field private mSlcReady:Z

.field private mSpeakerVolume:I

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mType:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    .line 45
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 48
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 51
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 57
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    .line 60
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 63
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 66
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 68
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 70
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 72
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    .line 77
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    .line 79
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 84
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    .line 83
    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 94
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 95
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 93
    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 269
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V

    .line 383
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private startListenForPhoneState()V
    .locals 5

    .prologue
    .line 126
    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    .line 130
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 135
    const/16 v4, 0x101

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "subId":I
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "HeadsetPhoneState"

    const-string/jumbo v3, "NullPointerException for Telephonymanager while startListen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopListenForPhoneState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 148
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 155
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "HeadsetPhoneState"

    const-string/jumbo v2, "NullPointerException for Telephonymanager while stopListen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 109
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 105
    return-void
.end method

.method getBatteryCharge()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    return v0
.end method

.method getCallState()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getMicVolume()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method getRoam()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    return v0
.end method

.method getService()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method getSignal()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method getSpeakerVolume()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    return v0
.end method

.method isInCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 249
    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method listenForPhoneState(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    .line 113
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    goto :goto_0
.end method

.method sendDeviceStateChanged()V
    .locals 6

    .prologue
    .line 256
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 258
    .local v0, "signal":I
    :goto_0
    const-string/jumbo v2, "HeadsetPhoneState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceStateChanged. mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    const-string/jumbo v4, " mSignal="

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    const-string/jumbo v4, " mRoam="

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    const-string/jumbo v4, " mBatteryCharge="

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 262
    .local v1, "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    if-eqz v1, :cond_0

    .line 264
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    .line 263
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 252
    :cond_0
    return-void

    .line 256
    .end local v0    # "signal":I
    .end local v1    # "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "signal":I
    goto :goto_0
.end method

.method setBatteryCharge(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 222
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    if-eq v0, p1, :cond_0

    .line 223
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 224
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 221
    :cond_0
    return-void
.end method

.method setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 177
    return-void
.end method

.method setMicVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 240
    return-void
.end method

.method setNumActiveCall(I)V
    .locals 0
    .param p1, "numActive"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 169
    return-void
.end method

.method setNumHeldCall(I)V
    .locals 0
    .param p1, "numHeldCall"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 185
    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumberCall"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    .line 189
    return-void
.end method

.method setRoam(I)V
    .locals 1
    .param p1, "roam"    # I

    .prologue
    .line 215
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    if-eq v0, p1, :cond_0

    .line 216
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 217
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 214
    :cond_0
    return-void
.end method

.method setSpeakerVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 232
    return-void
.end method

.method setType(I)V
    .locals 0
    .param p1, "mTypeCall"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    .line 198
    return-void
.end method
