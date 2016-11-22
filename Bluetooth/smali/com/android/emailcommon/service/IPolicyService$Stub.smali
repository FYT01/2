.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.emailcommon.service.IPolicyService"

.field static final TRANSACTION_canDisableCamera:I = 0x6

.field static final TRANSACTION_isActive:I = 0x1

.field static final TRANSACTION_remoteWipe:I = 0x5

.field static final TRANSACTION_setAccountHoldFlag:I = 0x2

.field static final TRANSACTION_setAccountPolicy:I = 0x3

.field static final TRANSACTION_setAccountPolicy2:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v9

    .line 47
    :sswitch_1
    const-string/jumbo v10, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 50
    sget-object v10, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 55
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v8

    .line 56
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v8, :cond_0

    move v1, v9

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return v9

    .line 53
    .end local v8    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/android/emailcommon/provider/Policy;
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/android/emailcommon/provider/Policy;
    :sswitch_2
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    .line 67
    .local v7, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v3, v7}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v9

    .line 66
    .end local v7    # "_arg1":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_1

    .line 73
    .end local v2    # "_arg0":J
    .end local v7    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 77
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/Policy;

    .line 84
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v9

    .line 81
    .end local v5    # "_arg2":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/android/emailcommon/provider/Policy;
    goto :goto_2

    .line 91
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    :sswitch_4
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 95
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/Policy;

    .line 102
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 104
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    .local v6, "_arg3":Z
    :goto_4
    move-object v1, p0

    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v9

    .line 99
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    goto :goto_3

    .line 104
    .end local v4    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    .restart local v5    # "_arg2":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Z
    goto :goto_4

    .line 111
    .end local v2    # "_arg0":J
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    :sswitch_5
    const-string/jumbo v1, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    .line 113
    return v9

    .line 117
    :sswitch_6
    const-string/jumbo v10, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->canDisableCamera()Z

    move-result v8

    .line 119
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v8, :cond_6

    move v1, v9

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v9

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
