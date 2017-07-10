.class final Lokhttp3/internal/tls/CertificateChainCleaner$BasicCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "CertificateChainCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/CertificateChainCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BasicCertificateChainCleaner"
.end annotation


# static fields
.field private static final MAX_SIGNERS:I = 0x9


# instance fields
.field private final trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;


# direct methods
.method public constructor <init>(Lokhttp3/internal/tls/TrustRootIndex;)V
    .registers 2
    .param p1, "trustRootIndex"    # Lokhttp3/internal/tls/TrustRootIndex;

    .prologue
    .line 78
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 79
    iput-object p1, p0, Lokhttp3/internal/tls/CertificateChainCleaner$BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 80
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "toVerify"    # Ljava/security/cert/X509Certificate;
    .param p2, "signingCert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 146
    :goto_f
    return v1

    .line 143
    :cond_10
    :try_start_10
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    .line 144
    const/4 v1, 0x1

    goto :goto_f

    .line 145
    :catch_19
    move-exception v0

    .line 146
    .local v0, "verifyFailed":Ljava/security/GeneralSecurityException;
    goto :goto_f
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v3, "queue":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/security/cert/Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v1, 0x0

    .line 97
    .local v1, "foundTrustedCertificate":Z
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_13
    const/16 v8, 0x9

    if-ge v0, v8, :cond_7e

    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 103
    .local v6, "toVerify":Ljava/security/cert/X509Certificate;
    iget-object v8, p0, Lokhttp3/internal/tls/CertificateChainCleaner$BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    invoke-virtual {v8, v6}, Lokhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 104
    .local v7, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_46

    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_38

    invoke-virtual {v6, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 106
    :cond_38
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3b
    invoke-direct {p0, v7, v7}, Lokhttp3/internal/tls/CertificateChainCleaner$BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 128
    :cond_41
    return-object v4

    .line 111
    :cond_42
    const/4 v1, 0x1

    .line 97
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 117
    :cond_46
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 119
    .local v5, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v6, v5}, Lokhttp3/internal/tls/CertificateChainCleaner$BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 121
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 127
    .end local v5    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_63
    if-nez v1, :cond_41

    .line 132
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find a trusted cert that signed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 136
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .end local v6    # "toVerify":Ljava/security/cert/X509Certificate;
    .end local v7    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_7e
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Certificate chain too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
