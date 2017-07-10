.class Lorg/telegram/ui/ActionBar/ActionBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$302(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 344
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$302(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 330
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$500(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$500(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 333
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 337
    :cond_4e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$000(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$100(Lorg/telegram/ui/ActionBar/ActionBar;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_23
    return-void
.end method
