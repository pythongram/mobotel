.class Lorg/telegram/ui/ActionBar/BottomSheet$6;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 680
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$6;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$6;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$6;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 688
    :cond_10
    :goto_10
    return-void

    .line 686
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$6;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$702(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$6;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # invokes: Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    goto :goto_10
.end method
