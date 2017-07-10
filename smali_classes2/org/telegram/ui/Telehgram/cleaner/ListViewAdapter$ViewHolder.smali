.class Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field img:Landroid/widget/ImageView;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field txt1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 100
    const v1, 0x7f0e013e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->txt1:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0e009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 102
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 103
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 104
    return-void
.end method


# virtual methods
.method public fill(Landroid/widget/ArrayAdapter;Lorg/telegram/ui/Telehgram/cleaner/Items;I)V
    .registers 10
    .param p2, "item"    # Lorg/telegram/ui/Telehgram/cleaner/Items;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lorg/telegram/ui/Telehgram/cleaner/Items;",
            ">;",
            "Lorg/telegram/ui/Telehgram/cleaner/Items;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lorg/telegram/ui/Telehgram/cleaner/Items;>;"
    const/4 v5, 0x0

    const v4, 0x7f020130

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->txt1:Landroid/widget/TextView;

    iget-object v1, p2, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->txt1:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->txt1:Landroid/widget/TextView;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "theme"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "chatsMessageColor"

    const v3, -0x707071

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 112
    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 115
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lorg/telegram/ui/Telehgram/cleaner/Items;->image:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 120
    return-void
.end method
