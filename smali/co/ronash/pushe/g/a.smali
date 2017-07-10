.class public Lco/ronash/pushe/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static volatile b:Lco/ronash/pushe/g/a;


# instance fields
.field private a:Z

.field private c:Landroid/location/Location;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/ronash/pushe/g/a;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/g/a;
    .registers 3

    sget-object v0, Lco/ronash/pushe/g/a;->b:Lco/ronash/pushe/g/a;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/g/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/g/a;->b:Lco/ronash/pushe/g/a;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/g/a;

    invoke-direct {v0}, Lco/ronash/pushe/g/a;-><init>()V

    sput-object v0, Lco/ronash/pushe/g/a;->b:Lco/ronash/pushe/g/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c

    :cond_13
    if-eqz p0, :cond_19

    sget-object v0, Lco/ronash/pushe/g/a;->b:Lco/ronash/pushe/g/a;

    iput-object p0, v0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    :cond_19
    sget-object v0, Lco/ronash/pushe/g/a;->b:Lco/ronash/pushe/g/a;

    return-object v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_2d
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_47

    :cond_39
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_47
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_60

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_6

    :cond_60
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7b

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_7b

    move v0, v1

    goto :goto_6

    :cond_7b
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    move v0, v1

    goto/16 :goto_6
.end method

.method private f()V
    .registers 3

    invoke-direct {p0}, Lco/ronash/pushe/g/a;->g()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    invoke-direct {p0, v0, v1}, Lco/ronash/pushe/g/a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, v0}, Lco/ronash/pushe/g/a;->a(Landroid/location/Location;)V

    :cond_15
    return-void
.end method

.method private g()Landroid/location/LocationManager;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_21

    new-instance v0, Lco/ronash/pushe/k/b;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    :cond_21
    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 2

    invoke-direct {p0}, Lco/ronash/pushe/g/a;->f()V

    iget-object v0, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    return-object v0
.end method

.method public b()V
    .registers 4

    invoke-direct {p0}, Lco/ronash/pushe/g/a;->g()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public c()Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lco/ronash/pushe/g/a;->f()V

    iget-object v1, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public d()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-nez v0, :cond_1c

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_16

    :cond_1c
    iget-object v0, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result v0

    goto :goto_19

    :catch_2d
    move-exception v0

    const-string v0, "Network Permissions not given to application"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_19
.end method

.method public e()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lco/ronash/pushe/g/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationProviderAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7

    const-string v0, "Location received"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Location"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    iget-object v0, p0, Lco/ronash/pushe/g/a;->c:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/g/a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0, p1}, Lco/ronash/pushe/g/a;->a(Landroid/location/Location;)V

    :cond_24
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
