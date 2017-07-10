.class Lorg/telegram/ui/Telehgram/FontSelectActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "FontSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FontSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FontSelectActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$1;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "paramAnonymousInt"    # I

    .prologue
    .line 59
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$1;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->finishFragment()V

    .line 61
    :cond_8
    return-void
.end method
