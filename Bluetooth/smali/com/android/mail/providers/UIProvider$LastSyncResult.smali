.class public final Lcom/android/mail/providers/UIProvider$LastSyncResult;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastSyncResult"
.end annotation


# static fields
.field public static final AUTH_ERROR:I = 0x2

.field public static final CONNECTION_ERROR:I = 0x1

.field public static final INTERNAL_ERROR:I = 0x5

.field public static final SECURITY_ERROR:I = 0x3

.field public static final SERVER_ERROR:I = 0x6

.field public static final STORAGE_ERROR:I = 0x4

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "result"    # I

    .prologue
    .line 110
    packed-switch p0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid LastSyncResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    const-string/jumbo v0, "success"

    return-object v0

    .line 112
    :pswitch_1
    const-string/jumbo v0, "connection_error"

    return-object v0

    .line 113
    :pswitch_2
    const-string/jumbo v0, "auth_error"

    return-object v0

    .line 114
    :pswitch_3
    const-string/jumbo v0, "security_error"

    return-object v0

    .line 115
    :pswitch_4
    const-string/jumbo v0, "storage_error"

    return-object v0

    .line 116
    :pswitch_5
    const-string/jumbo v0, "internal_error"

    return-object v0

    .line 117
    :pswitch_6
    const-string/jumbo v0, "server_error"

    return-object v0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
