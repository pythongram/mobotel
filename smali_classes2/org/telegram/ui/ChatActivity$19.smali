.class Lorg/telegram/ui/ChatActivity$19;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2074
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 2077
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_15

    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/SecretPhotoViewer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2078
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_29

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7f

    .line 2079
    :cond_29
    new-instance v1, Lorg/telegram/ui/ChatActivity$19$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$19$1;-><init>(Lorg/telegram/ui/ChatActivity$19;)V

    const-wide/16 v4, 0x96

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2085
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 2086
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2087
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v8}, Lorg/telegram/ui/ChatActivity;->access$9202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2089
    :try_start_49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "PhotoTip"

    const v4, 0x7f07044c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    move v1, v2

    .line 2122
    :cond_5f
    return v1

    .line 2090
    :catch_60
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 2093
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2094
    new-instance v1, Lorg/telegram/ui/ChatActivity$19$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$19$2;-><init>(Lorg/telegram/ui/ChatActivity$19;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2101
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V

    goto :goto_5e

    .line 2103
    :cond_7f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_5e

    .line 2104
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/SecretPhotoViewer;->isVisible()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 2106
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 2107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f8

    .line 2108
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->startX:F
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->startY:F
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-double v6, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_d3

    .line 2109
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2110
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v8}, Lorg/telegram/ui/ChatActivity;->access$9202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2116
    :cond_d3
    :goto_d3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2117
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2118
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLongClickable(Z)V

    goto/16 :goto_5e

    .line 2113
    :cond_f8
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2114
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v8}, Lorg/telegram/ui/ChatActivity;->access$9202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_d3
.end method
