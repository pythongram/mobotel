.class Lorg/telegram/ui/ActionBar/BottomSheet$9$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet$9;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ActionBar/BottomSheet$9;

    .prologue
    .line 894
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 898
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 902
    :goto_7
    return-void

    .line 899
    :catch_8
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
