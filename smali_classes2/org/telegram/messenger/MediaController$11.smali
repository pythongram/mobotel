.class Lorg/telegram/messenger/MediaController$11;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 1908
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1911
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1912
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1914
    :cond_19
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1915
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1917
    :cond_32
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1918
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1920
    :cond_4b
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1921
    return-void
.end method
