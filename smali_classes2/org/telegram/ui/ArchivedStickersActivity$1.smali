.class Lorg/telegram/ui/ArchivedStickersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ArchivedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$1;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 95
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$1;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->finishFragment()V

    .line 98
    :cond_8
    return-void
.end method
