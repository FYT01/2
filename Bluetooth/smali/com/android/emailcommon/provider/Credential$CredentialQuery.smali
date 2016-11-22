.class public interface abstract Lcom/android/emailcommon/provider/Credential$CredentialQuery;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CredentialQuery"
.end annotation


# static fields
.field public static final ACCESS_TOKEN_COLUMN_INDEX:I = 0x2

.field public static final EXPIRATION_COLUMN_INDEX:I = 0x4

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROVIDER_COLUMN_INDEX:I = 0x1

.field public static final REFRESH_TOKEN_COLUMN_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "provider"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "accessToken"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "refreshToken"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "expiration"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    sput-object v0, Lcom/android/emailcommon/provider/Credential$CredentialQuery;->PROJECTION:[Ljava/lang/String;

    .line 47
    return-void
.end method
