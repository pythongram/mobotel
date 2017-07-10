.class Lorg/telegram/ui/ChatActivity$97;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateChatDialogsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 11200
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$97;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 11202
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    .line 11203
    .local v0, "access$6600":Lorg/telegram/ui/Components/ChatDialogsView;
    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$97;->val$visible:Z

    if-eqz v2, :cond_19

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v2, :cond_15

    const v1, 0x7f0200fd

    .line 11204
    .local v1, "i":I
    :goto_11
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView;->setBtnResId(I)V

    .line 11205
    return-void

    .line 11203
    .end local v1    # "i":I
    :cond_15
    const v1, 0x7f020245

    goto :goto_11

    :cond_19
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v2, :cond_21

    const v1, 0x7f0200fc

    goto :goto_11

    :cond_21
    const v1, 0x7f02024a

    goto :goto_11
.end method
