.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "FavEmojisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 306
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->finishFragment()V

    .line 309
    :cond_8
    return-void
.end method
