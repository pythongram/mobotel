.class Lorg/telegram/ui/ChannelEditActivity$5;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 357
    const/4 v0, 0x6

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$1400(Lorg/telegram/ui/ChannelEditActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$1400(Lorg/telegram/ui/ChannelEditActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
