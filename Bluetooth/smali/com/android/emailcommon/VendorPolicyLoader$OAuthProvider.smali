.class public Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;
.super Ljava/lang/Object;
.source "VendorPolicyLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/VendorPolicyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthProvider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x761f7a2f5e3b8b6eL


# instance fields
.field public authEndpoint:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public clientSecret:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public redirectUri:Ljava/lang/String;

.field public refreshEndpoint:Ljava/lang/String;

.field public responseType:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tokenEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
