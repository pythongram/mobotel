.class Lorg/telegram/ui/LocationActivity$5$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LocationActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity$5;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/LocationActivity$5;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1100(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 331
    :try_start_14
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->val$map:Lcom/google/android/gms/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1100(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LocationActivity$5$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LocationActivity$5$1$1;-><init>(Lorg/telegram/ui/LocationActivity$5$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$1302(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1400(Lorg/telegram/ui/LocationActivity;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$5$1;->this$1:Lorg/telegram/ui/LocationActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1100(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onResume()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_54} :catch_55

    .line 349
    :cond_54
    :goto_54
    return-void

    .line 345
    :catch_55
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_54
.end method
