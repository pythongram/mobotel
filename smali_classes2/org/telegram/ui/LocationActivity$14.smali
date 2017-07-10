.class Lorg/telegram/ui/LocationActivity$14;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;

.field final synthetic val$map:Lcom/google/android/gms/maps/MapView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/MapView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$14;->this$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$14;->val$map:Lcom/google/android/gms/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$14;->val$map:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_f

    .line 581
    :goto_6
    new-instance v0, Lorg/telegram/ui/LocationActivity$14$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$14$1;-><init>(Lorg/telegram/ui/LocationActivity$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 606
    return-void

    .line 578
    :catch_f
    move-exception v0

    goto :goto_6
.end method
