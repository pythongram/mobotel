.class Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/rey/material/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/rey/material/widget/ListPopupWindow$1;

    .prologue
    .line 1775
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1778
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1779
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1781
    .local v2, "y":I
    if-nez v0, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mPopup:Lcom/rey/material/widget/PopupWindow;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mPopup:Lcom/rey/material/widget/PopupWindow;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rey/material/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_53

    if-ltz v1, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mPopup:Lcom/rey/material/widget/PopupWindow;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rey/material/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_53

    if-ltz v2, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mPopup:Lcom/rey/material/widget/PopupWindow;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rey/material/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 1784
    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$1600(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/rey/material/widget/ListPopupWindow;->access$1500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1788
    :cond_51
    :goto_51
    const/4 v3, 0x0

    return v3

    .line 1785
    :cond_53
    const/4 v3, 0x1

    if-ne v0, v3, :cond_51

    .line 1786
    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->access$1600(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    # getter for: Lcom/rey/material/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/rey/material/widget/ListPopupWindow;->access$1500(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_51
.end method
