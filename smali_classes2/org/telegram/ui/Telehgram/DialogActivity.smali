.class public Lorg/telegram/ui/Telehgram/DialogActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DialogActivity.java"


# instance fields
.field private bottunView:Landroid/widget/Button;

.field private button:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentView:Landroid/widget/TextView;

.field private image:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/DialogActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 42
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->image:Ljava/lang/String;

    .line 43
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->title:Ljava/lang/String;

    .line 44
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->content:Ljava/lang/String;

    .line 45
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->url:Ljava/lang/String;

    .line 46
    const-string v1, "button"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->button:Ljava/lang/String;

    .line 48
    :cond_42
    const v1, 0x7f0e0089

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->imageView:Landroid/widget/ImageView;

    .line 49
    const v1, 0x7f0e0063

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->titleView:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0e008a

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->contentView:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0e008c

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->bottunView:Landroid/widget/Button;

    .line 52
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->image:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x3dcccccd

    .line 54
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, v5}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v5

    .line 56
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->imageView:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->contentView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->contentView:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->bottunView:Landroid/widget/Button;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->button:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 83
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DialogActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/DialogActivity;->finish()V

    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 71
    return-void
.end method
