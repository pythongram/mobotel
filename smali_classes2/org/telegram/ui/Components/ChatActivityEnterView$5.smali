.class Lorg/telegram/ui/Components/ChatActivityEnterView$5;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$5;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 571
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 572
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/gif"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "image/*"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "image/jpg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "image/png"

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 574
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$5$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$5;)V

    .line 596
    .local v0, "callback":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    invoke-static {v1, p1, v0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$5;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1e

    .line 602
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$5;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v1, :cond_23

    move v1, v2

    :goto_16
    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 603
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$5;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 606
    :cond_1e
    :try_start_1e
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_25

    move-result v2

    .line 610
    :goto_22
    return v2

    .line 602
    :cond_23
    const/4 v1, 0x2

    goto :goto_16

    .line 607
    :catch_25
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method
