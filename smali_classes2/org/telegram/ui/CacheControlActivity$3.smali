.class Lorg/telegram/ui/CacheControlActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$3;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 294
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$3;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity;->finishFragment()V

    .line 297
    :cond_8
    return-void
.end method
