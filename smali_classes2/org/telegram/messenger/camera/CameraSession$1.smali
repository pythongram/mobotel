.class Lorg/telegram/messenger/camera/CameraSession$1;
.super Ljava/lang/Object;
.source "CameraSession.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/camera/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraSession;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 50
    if-eqz p1, :cond_2

    .line 55
    :cond_2
    return-void
.end method
