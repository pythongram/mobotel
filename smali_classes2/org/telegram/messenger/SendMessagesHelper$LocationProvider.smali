.class public Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

.field private gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private locationQueryCancelRunnable:Ljava/lang/Runnable;

.field private networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 88
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .registers 4
    .param p1, "locationProviderDelegate"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 88
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 133
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .line 134
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 143
    iput-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    .line 144
    iput-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    .line 145
    return-void
.end method


# virtual methods
.method public setDelegate(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .registers 2
    .param p1, "locationProviderDelegate"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .line 138
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 149
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 152
    :cond_10
    :try_start_10
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_58

    .line 157
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_5d

    .line 162
    :goto_28
    :try_start_28
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_40

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_62

    .line 169
    :cond_40
    :goto_40
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_49

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 172
    :cond_49
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 189
    return-void

    .line 153
    :catch_58
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 158
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5d
    move-exception v6

    .line 159
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 166
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_62
    move-exception v6

    .line 167
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_5

    .line 200
    :goto_4
    return-void

    .line 195
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 199
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    goto :goto_4
.end method
