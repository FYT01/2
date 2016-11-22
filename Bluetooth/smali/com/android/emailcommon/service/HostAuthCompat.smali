.class public Lcom/android/emailcommon/service/HostAuthCompat;
.super Ljava/lang/Object;
.source "HostAuthCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/HostAuthCompat$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/HostAuthCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mClientCertAlias:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mExpiration:J

.field private mFlags:I

.field private mLogin:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProtocol:Ljava/lang/String;

.field private mProviderId:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mServerCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/emailcommon/service/HostAuthCompat$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/HostAuthCompat$1;-><init>()V

    .line 119
    sput-object v0, Lcom/android/emailcommon/service/HostAuthCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProtocol:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAddress:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPort:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mFlags:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mLogin:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPassword:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mDomain:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mClientCertAlias:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mServerCert:[B

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProviderId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAccessToken:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mRefreshToken:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mExpiration:J

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProtocol:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAddress:Ljava/lang/String;

    .line 34
    iget v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPort:I

    .line 35
    iget v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mFlags:I

    .line 36
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mLogin:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPassword:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mDomain:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mClientCertAlias:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mServerCert:[B

    .line 41
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProviderId:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAccessToken:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mRefreshToken:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    iput-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mExpiration:J

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public toHostAuth()Lcom/android/emailcommon/provider/HostAuth;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 51
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProtocol:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPort:I

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 54
    iget v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mFlags:I

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 55
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mLogin:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mDomain:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mClientCertAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mServerCert:[B

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 60
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProviderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 62
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProviderId:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 63
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAccessToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 64
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mRefreshToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 65
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    iget-wide v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mExpiration:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 67
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[protocol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mServerCert:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method
