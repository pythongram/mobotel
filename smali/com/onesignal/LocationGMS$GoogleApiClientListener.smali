.class Lcom/onesignal/LocationGMS$GoogleApiClientListener;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleApiClientListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/LocationGMS$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/onesignal/LocationGMS$1;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 252
    const/4 v1, 0x0

    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 253
    # getter for: Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$100()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    .line 255
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_1c

    .line 256
    # invokes: Lcom/onesignal/LocationGMS;->receivedLocationPoint(Landroid/location/Location;)V
    invoke-static {v0}, Lcom/onesignal/LocationGMS;->access$200(Landroid/location/Location;)V

    .line 257
    # getter for: Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$100()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->disconnect()V

    .line 261
    :goto_1b
    return-void

    .line 260
    :cond_1c
    new-instance v1, Lcom/onesignal/LocationGMS$LocationUpdateListener;

    # getter for: Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$100()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onesignal/LocationGMS$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    # setter for: Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;
    invoke-static {v1}, Lcom/onesignal/LocationGMS;->access$302(Lcom/onesignal/LocationGMS$LocationUpdateListener;)Lcom/onesignal/LocationGMS$LocationUpdateListener;

    goto :goto_1b
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 271
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 266
    return-void
.end method
