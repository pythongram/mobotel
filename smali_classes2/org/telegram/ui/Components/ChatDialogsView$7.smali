.class Lorg/telegram/ui/Components/ChatDialogsView$7;
.super Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$400(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 188
    :cond_15
    return-void
.end method

.method public onSwipeLeft()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$400(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 182
    :cond_15
    return-void
.end method

.method public onSwipeRight()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$400(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 176
    :cond_15
    return-void
.end method

.method public onSwipeTop()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$400(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$7;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 170
    :cond_15
    return-void
.end method
