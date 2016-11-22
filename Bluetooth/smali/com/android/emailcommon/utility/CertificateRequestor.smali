.class public Lcom/android/emailcommon/utility/CertificateRequestor;
.super Landroid/app/Activity;
.source "CertificateRequestor.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# static fields
.field public static final CERTIFICATE_REQUEST_URI:Landroid/net/Uri;

.field public static final EXTRA_HOST:Ljava/lang/String; = "CertificateRequestor.host"

.field public static final EXTRA_PORT:Ljava/lang/String; = "CertificateRequestor.port"

.field public static final RESULT_ALIAS:Ljava/lang/String; = "CertificateRequestor.alias"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "eas://com.android.emailcommon/certrequest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/emailcommon/utility/CertificateRequestor;->CERTIFICATE_REQUEST_URI:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/utility/CertificateRequestor;->setResult(I)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/CertificateRequestor;->finish()V

    .line 61
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "CertificateRequestor.alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/utility/CertificateRequestor;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/CertificateRequestor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 45
    .local v7, "i":Landroid/content/Intent;
    const-string/jumbo v0, "CertificateRequestor.host"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v0, "CertificateRequestor.port"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 48
    .local v5, "port":I
    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    .line 49
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method
