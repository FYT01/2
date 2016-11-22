.class final Lcom/android/bluetooth/btservice/JniCallbacks;
.super Ljava/lang/Object;
.source "JniCallbacks.java"


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 0
    .param p1, "adapterStateMachine"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p2, "adapterProperties"    # Lcom/android/bluetooth/btservice/AdapterProperties;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 28
    iput-object p2, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 26
    return-void
.end method


# virtual methods
.method aclStateChangeCallback(I[BI)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/RemoteDevices;->aclStateChangeCallback(I[BI)V

    .line 69
    return-void
.end method

.method adapterPropertyChangedCallback([I[[B)V
    .locals 1
    .param p1, "types"    # [I
    .param p2, "val"    # [[B

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->adapterPropertyChangedCallback([I[[B)V

    .line 81
    return-void
.end method

.method bondStateChangeCallback(I[BI)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->bondStateChangeCallback(I[BI)V

    .line 65
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 38
    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 39
    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 40
    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 36
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method deviceFoundCallback([B)V
    .locals 1
    .param p1, "address"    # [B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->deviceFoundCallback([B)V

    .line 57
    return-void
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 1
    .param p1, "address"    # [B
    .param p2, "types"    # [I
    .param p3, "val"    # [[B

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/RemoteDevices;->devicePropertyChangedCallback([B[I[[B)V

    .line 53
    return-void
.end method

.method discoveryStateChangeCallback(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->discoveryStateChangeCallback(I)V

    .line 77
    return-void
.end method

.method init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 0
    .param p1, "bondStateMachine"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p2, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 32
    iput-object p2, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 33
    iput-object p1, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 31
    return-void
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 1
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "min16Digits"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->pinRequestCallback([B[BIZ)V

    .line 61
    return-void
.end method

.method sspRequestCallback([B[BIII)V
    .locals 6
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "pairingVariant"    # I
    .param p5, "passkey"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->sspRequestCallback([B[BIII)V

    .line 49
    return-void
.end method

.method stateChangeCallback(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->stateChangeCallback(I)V

    .line 73
    return-void
.end method
