.class public Lco/ronash/pushe/c/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/i;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/telephony/CellInfo;)Lco/ronash/pushe/k/l;
    .registers 9

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v1, v3, :cond_9

    move-object v1, v2

    :goto_8
    return-object v1

    :cond_9
    new-instance v3, Lco/ronash/pushe/k/l;

    invoke-direct {v3}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "registered"

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Z)V

    :try_start_17
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    move-object v1, v0

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "ci"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "mcc"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "mnc"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "pci"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "tac"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "CellIdentityLte"

    invoke-virtual {v3, v5, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "asuLevel"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "dbm"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "level"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "timingAdvance"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "original"

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CellSignalStrengthLte"

    invoke-virtual {v3, v1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_b1} :catch_b4

    move-object v1, v3

    goto/16 :goto_8

    :catch_b4
    move-exception v1

    :try_start_b5
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object v1, v0

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "cid"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "mcc"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "mnc"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "psc"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "lac"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "CellIdentityGsm"

    invoke-virtual {v3, v5, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "asuLevel"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "dbm"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "level"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "original"

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CellSignalStrengthGsm"

    invoke-virtual {v3, v1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_142} :catch_145

    move-object v1, v3

    goto/16 :goto_8

    :catch_145
    move-exception v1

    :try_start_146
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    move-object v1, v0

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "basestationId"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "latitude"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "longitude"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "networkId"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "systemId"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "CellIdentityCmda"

    invoke-virtual {v3, v5, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v5, "asuLevel"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "dbm"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "level"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v5, "original"

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CellSignalStrengthCmda"

    invoke-virtual {v3, v1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_1d3} :catch_1d6

    move-object v1, v3

    goto/16 :goto_8

    :catch_1d6
    move-exception v1

    :try_start_1d7
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v4, "cid"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "mcc"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "mnc"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "psc"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "lac"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "CellIdentityWcmda"

    invoke-virtual {v3, v4, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v4, "asuLevel"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "dbm"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "level"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v4, "original"

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CellSignalStrengthWcmda"

    invoke-virtual {v3, v4, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_262} :catch_265

    move-object v1, v3

    goto/16 :goto_8

    :catch_265
    move-exception v1

    move-object v1, v2

    goto/16 :goto_8
.end method

.method private b()V
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "t6"

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/i;->a()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    const-string v1, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/c/a/j;

    invoke-direct {v2, p0, v0}, Lco/ronash/pushe/c/a/j;-><init>(Lco/ronash/pushe/c/a/i;Lco/ronash/pushe/k/l;)V

    invoke-virtual {v1, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/k/l;
    .registers 8

    :try_start_0
    new-instance v0, Lco/ronash/pushe/c/a/g;

    iget-object v1, p0, Lco/ronash/pushe/c/a/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/c/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/g;->a()Lco/ronash/pushe/k/l;

    move-result-object v1

    iget-object v0, p0, Lco/ronash/pushe/c/a/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lco/ronash/pushe/c/a/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_73

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_73

    new-instance v4, Lco/ronash/pushe/k/d;

    invoke-direct {v4}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-direct {p0, v0}, Lco/ronash/pushe/c/a/i;->a(Landroid/telephony/CellInfo;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0xbb8

    if-ge v5, v6, :cond_6c

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_41

    :cond_6c
    const-string v0, "cellsInfo"

    invoke-virtual {v1, v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    move-object v0, v1

    :goto_72
    return-object v0

    :cond_73
    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    const-string v0, "cellsInfo"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_88} :catch_8a

    move-object v0, v1

    goto :goto_72

    :catch_8a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_72
.end method

.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 2

    invoke-direct {p0}, Lco/ronash/pushe/c/a/i;->b()V

    return-void
.end method
