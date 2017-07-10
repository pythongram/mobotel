.class public Lorg/telegram/ui/Telehgram/ShowPopUp;
.super Landroid/app/Activity;
.source "ShowPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;
    }
.end annotation


# instance fields
.field private cancel:Landroid/widget/Button;

.field private ok:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShowPopUp;->finish()V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v6, 0x7f030046

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShowPopUp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 32
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "txt"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "text":Ljava/lang/String;
    const v6, 0x7f0e012e

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "durationTitle":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const-string v6, "tit"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Telehgram/ShowPopUp;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    const-string v6, "url"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "url":Ljava/lang/String;
    const v6, 0x7f0e0130

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lorg/telegram/ui/Telehgram/ShowPopUp;->cancel:Landroid/widget/Button;

    .line 41
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShowPopUp;->cancel:Landroid/widget/Button;

    new-instance v7, Lorg/telegram/ui/Telehgram/ShowPopUp$1;

    invoke-direct {v7, p0, v5}, Lorg/telegram/ui/Telehgram/ShowPopUp$1;-><init>(Lorg/telegram/ui/Telehgram/ShowPopUp;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-string v6, "ico"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "ico":Ljava/lang/String;
    new-instance v7, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;

    const v6, 0x7f0e0062

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;-><init>(Lorg/telegram/ui/Telehgram/ShowPopUp;Landroid/widget/ImageView;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    const v6, 0x7f0e0132

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Telehgram/ShowPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lorg/telegram/ui/Telehgram/ShowPopUp;->ok:Landroid/widget/Button;

    .line 53
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShowPopUp;->ok:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
