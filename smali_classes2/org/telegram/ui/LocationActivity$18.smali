.class Lorg/telegram/ui/LocationActivity$18;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->onMapInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 713
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$18;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 716
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$18;->this$0:Lorg/telegram/ui/LocationActivity;

    # invokes: Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/LocationActivity;->access$2800(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V

    .line 717
    return-void
.end method
