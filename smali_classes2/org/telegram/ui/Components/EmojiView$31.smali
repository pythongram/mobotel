.class Lorg/telegram/ui/Components/EmojiView$31;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1360
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1363
    const/16 v1, 0x52

    if-ne p2, v1, :cond_2f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2f

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1364
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 1367
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method
