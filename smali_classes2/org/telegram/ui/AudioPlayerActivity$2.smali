.class Lorg/telegram/ui/AudioPlayerActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioPlayerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioPlayerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/telegram/ui/AudioPlayerActivity$2;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 202
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$2;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/AudioPlayerActivity;->finishFragment()V

    .line 205
    :cond_8
    return-void
.end method
