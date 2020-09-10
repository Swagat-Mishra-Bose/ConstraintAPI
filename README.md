# ConstraintAPI

Lightweight wrapper to help constraint UI elements easier.

## Integration

### Using Pod

Add below into project Podfile.
```
pod 'ConstraintAPI'
```

Run `pod install` in terminal in the project folder to install the dependencies.


## Usage

API uses wrapper methods to anchor margins/sides, size (width and height) and axis to specific anchor points. The API will handle calls to `translatesAutoresizingMaskIntoConstraints` so it doesn't need to be explicitly invoked.

Access to set constraints is also available if needed for modification later.

All parameters to available methods are optionals and can be used in any possible combinations.

## Sample Usage

### Constraint Sides/Margins

```
viewA.anchor(top: viewB.bottomAnchor, leading: viewB.leadingAnchor, bottom: viewC.topAnchor, trailing: viewB.trailingAnchor)
```

OR 

```
viewA.anchor(top: viewB.bottomAnchor, left: viewB.leftAnchor, bottom: viewC.topAnchor, right: viewB.rightAnchor)
```

### Constraint Size

```
viewA.anchorSize(width: viewB.widthAnchor, height: viewB.heightAnchor)
```

### Constraint Axis

```
viewA.anchorAxis(xAxis: viewB.centerXAnchor, yAxis: viewB.centerYAnchor)
```
