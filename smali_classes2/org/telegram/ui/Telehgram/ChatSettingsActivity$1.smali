.class Lorg/telegram/ui/Telehgram/ChatSettingsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 89
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->finishFragment()V

    .line 92
    :cond_8
    return-void
.end method
