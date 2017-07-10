.class Lorg/telegram/ui/TelehgramSettingsActivity$3;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$3;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$3;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->versionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 373
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
