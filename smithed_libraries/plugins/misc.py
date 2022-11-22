from beet import Context


def display_broadcasted_pack(ctx: Context):
    """Simply outputs pack details"""

    print("Building", ctx.project_name, ctx.project_version)


def output_dist(ctx: Context):
    """Dynamically constructs the output directories for Github CI"""

    if not ctx.meta.get("output_release", True):
        print("> Skipped Output")
        return

    _, _, pack_name = ctx.project_id.partition(".")

    if ctx.data:
        ctx.data.save(
            path=(
                ctx.meta["broadcast_directory"]
                / "dist"
                / pack_name
                / f"smithed_{pack_name}_dp.zip"
            ),
            overwrite=True,
        )

    if ctx.assets:
        ctx.assets.save(
            path=(
                ctx.meta["broadcast_directory"]
                / "dist"
                / ctx.project_id.partition(".")[-1]
                / f"smithed_{pack_name}_rp.zip"
            ),
            overwrite=True,
        )
