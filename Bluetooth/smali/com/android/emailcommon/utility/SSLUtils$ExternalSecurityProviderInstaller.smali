.class public abstract Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExternalSecurityProviderInstaller"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract installIfNeeded(Landroid/content/Context;)V
.end method
