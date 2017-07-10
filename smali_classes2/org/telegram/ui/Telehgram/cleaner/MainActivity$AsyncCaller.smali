.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;Lorg/telegram/ui/Telehgram/cleaner/MainActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity;
    .param p2, "x1"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity$1;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    sget-object v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    sget-object v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramAudio_dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    sget-object v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    sget-object v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    sget-object v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 435
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 438
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    .line 440
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 441
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03004d

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const v6, 0x7f0e013f

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0e011c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 444
    .local v2, "text":Landroid/widget/TextView;
    const-string v4, "deleteSucsefull"

    const v5, 0x7f070870

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 446
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 447
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 448
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 449
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 450
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    # invokes: Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->SetfileNumbers()V
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->access$200(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V

    .line 453
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 410
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_10

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 414
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    # invokes: Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->prepareStyle1Animation()Landroid/animation/Animator;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->currentAnimation:Landroid/animation/Animator;

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 419
    return-void
.end method
