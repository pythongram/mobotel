.class Lorg/telegram/ui/CacheControlActivity$1$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/CacheControlActivity$1;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1$1;->this$1:Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1$1;->this$1:Lorg/telegram/ui/CacheControlActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/CacheControlActivity;->calculating:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->access$902(Lorg/telegram/ui/CacheControlActivity;Z)Z

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1$1;->this$1:Lorg/telegram/ui/CacheControlActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1$1;->this$1:Lorg/telegram/ui/CacheControlActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_1d
    return-void
.end method
