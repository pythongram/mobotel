.class Lorg/telegram/messenger/camera/CameraSession$2;
.super Landroid/view/OrientationEventListener;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraSession;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 7
    .param p1, "orientation"    # I

    .prologue
    .line 70
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$000(Lorg/telegram/messenger/camera/CameraSession;)Landroid/view/OrientationEventListener;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->initied:Z
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$100(Lorg/telegram/messenger/camera/CameraSession;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, -0x1

    if-ne p1, v2, :cond_14

    .line 83
    :cond_13
    :goto_13
    return-void

    .line 73
    :cond_14
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I
    invoke-static {v4}, Lorg/telegram/messenger/camera/CameraSession;->access$200(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v4

    # invokes: Lorg/telegram/messenger/camera/CameraSession;->roundOrientation(II)I
    invoke-static {v3, p1, v4}, Lorg/telegram/messenger/camera/CameraSession;->access$300(Lorg/telegram/messenger/camera/CameraSession;II)I

    move-result v3

    # setter for: Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/camera/CameraSession;->access$202(Lorg/telegram/messenger/camera/CameraSession;I)I

    .line 74
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 75
    .local v0, "mgr":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 76
    .local v1, "rotation":I
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$400(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I
    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraSession;->access$200(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v3

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$500(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v2

    if-eq v1, v2, :cond_13

    .line 77
    :cond_4d
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$600(Lorg/telegram/messenger/camera/CameraSession;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 78
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 80
    :cond_5a
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # setter for: Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I
    invoke-static {v2, v1}, Lorg/telegram/messenger/camera/CameraSession;->access$502(Lorg/telegram/messenger/camera/CameraSession;I)I

    .line 81
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession$2;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    # getter for: Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I
    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraSession;->access$200(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v3

    # setter for: Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/camera/CameraSession;->access$402(Lorg/telegram/messenger/camera/CameraSession;I)I

    goto :goto_13
.end method
