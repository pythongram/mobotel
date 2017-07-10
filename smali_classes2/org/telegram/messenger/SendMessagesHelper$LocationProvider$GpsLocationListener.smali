.class Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    .param p2, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 96
    if-eqz p1, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_b

    .line 110
    :cond_a
    :goto_a
    return-void

    .line 99
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # setter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$402(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Landroid/location/Location;)Landroid/location/Location;

    .line 101
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onLocationAcquired(Landroid/location/Location;)V

    .line 105
    :cond_41
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_52
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    goto :goto_a
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 115
    return-void
.end method
