.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.emailcommon.service.IEmailService"

.field static final TRANSACTION_autoDiscover:I = 0x9

.field static final TRANSACTION_deleteExternalAccountPIMData:I = 0xb

.field static final TRANSACTION_getApiVersion:I = 0xc

.field static final TRANSACTION_loadAttachment:I = 0x1

.field static final TRANSACTION_pushModify:I = 0x5

.field static final TRANSACTION_searchMessages:I = 0x7

.field static final TRANSACTION_sendMail:I = 0x3

.field static final TRANSACTION_sendMeetingResponse:I = 0x8

.field static final TRANSACTION_setLogging:I = 0xa

.field static final TRANSACTION_sync:I = 0x4

.field static final TRANSACTION_updateFolderList:I = 0x2

.field static final TRANSACTION_validate:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string/jumbo v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    return v3

    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v4

    .line 51
    .local v4, "_arg0":Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 53
    .local v5, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 55
    .local v7, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    .local v9, "_arg3":Z
    :goto_0
    move-object/from16 v3, p0

    .line 56
    invoke-virtual/range {v3 .. v9}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V

    .line 57
    const/4 v3, 0x1

    return v3

    .line 55
    .end local v9    # "_arg3":Z
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Z
    goto :goto_0

    .line 61
    .end local v4    # "_arg0":Lcom/android/emailcommon/service/IEmailServiceCallback;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":J
    .end local v9    # "_arg3":Z
    :sswitch_2
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 64
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v3, 0x1

    return v3

    .line 70
    .end local v12    # "_arg0":J
    :sswitch_3
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 73
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMail(J)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v3, 0x1

    return v3

    .line 79
    .end local v12    # "_arg0":J
    :sswitch_4
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 83
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Bundle;

    .line 89
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->sync(JLandroid/os/Bundle;)I

    move-result v22

    .line 90
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    if-eqz v20, :cond_2

    .line 93
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 87
    .end local v22    # "_result":I
    :cond_1
    const/16 v20, 0x0

    .local v20, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 97
    .end local v20    # "_arg1":Landroid/os/Bundle;
    .restart local v22    # "_result":I
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 103
    .end local v12    # "_arg0":J
    .end local v22    # "_result":I
    :sswitch_5
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 106
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/emailcommon/service/IEmailService$Stub;->pushModify(J)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v3, 0x1

    return v3

    .line 112
    .end local v12    # "_arg0":J
    :sswitch_6
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    sget-object v3, Lcom/android/emailcommon/service/HostAuthCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/service/HostAuthCompat;

    .line 120
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;

    move-result-object v23

    .line 121
    .local v23, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v23, :cond_4

    .line 123
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v3, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_4
    const/4 v3, 0x1

    return v3

    .line 118
    .end local v23    # "_result":Landroid/os/Bundle;
    :cond_3
    const/16 v17, 0x0

    .local v17, "_arg0":Lcom/android/emailcommon/service/HostAuthCompat;
    goto :goto_3

    .line 127
    .end local v17    # "_arg0":Lcom/android/emailcommon/service/HostAuthCompat;
    .restart local v23    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 133
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 137
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    sget-object v3, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/emailcommon/service/SearchParams;

    .line 144
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7    # "_arg2":J
    move-object/from16 v11, p0

    move-wide v15, v7

    .line 145
    invoke-virtual/range {v11 .. v16}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v22

    .line 146
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v3, 0x1

    return v3

    .line 141
    .end local v7    # "_arg2":J
    .end local v22    # "_result":I
    :cond_5
    const/4 v14, 0x0

    .local v14, "_arg1":Lcom/android/emailcommon/service/SearchParams;
    goto :goto_5

    .line 152
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":Lcom/android/emailcommon/service/SearchParams;
    :sswitch_8
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 156
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 157
    .local v19, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 158
    const/4 v3, 0x1

    return v3

    .line 162
    .end local v12    # "_arg0":J
    .end local v19    # "_arg1":I
    :sswitch_9
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 167
    .local v21, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 168
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v23, :cond_6

    .line 170
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_6
    const/4 v3, 0x1

    return v3

    .line 174
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 180
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 183
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 184
    const/4 v3, 0x1

    return v3

    .line 188
    .end local v10    # "_arg0":I
    :sswitch_b
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 191
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteExternalAccountPIMData(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v3, 0x1

    return v3

    .line 197
    .end local v18    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v3, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiVersion()I

    move-result v22

    .line 199
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v3, 0x1

    return v3

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
